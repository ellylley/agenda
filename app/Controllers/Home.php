<?php

namespace App\Controllers;

use Codeigniter\Controllers;
use App\models\M_sips;
use CodeIgniter\Session\Session;
use Dompdf\Dompdf;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use App\Models\LevelPermissionModel;
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use CURLFile;


class Home extends BaseController
{
    public function index()
    {
        if (session()->get('level')>0){
            $model= new M_sips();
            $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses halaman dashboard'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        
       
            $where=array(
                'id_setting'=> 1
              );
              $data['setting'] = $model->getWhere('setting',$where);
              $data['currentMenu'] = 'dashboard'; // Sesuaikan dengan menu yang aktif
        echo view('header', $data);
        echo view('menu', $data);
        echo view('dashboard', $data);
        echo view('footer');
    }else{
        return redirect()->to('home/login');
 
    } 
    }

    

    public function login()
    {
        $model= new M_sips();
        $where=array(
            'id_setting'=> 1
          );
          $data['setting'] = $model->getWhere('setting',$where);
        echo view('header', $data);
        echo view('login', $data);

} 
public function aksilogin()
{
    $name = $this->request->getPost('nama'); 
    $pw = $this->request->getPost('password');
    $captchaResponse = $this->request->getPost('g-recaptcha-response');
    $backupCaptcha = $this->request->getPost('backup_captcha');
    
    $secretKey = '6LdLhiAqAAAAAPxNXDyusM1UOxZZkC_BLCgfyoQf'; // Ganti dengan secret key Anda yang sebenarnya
    $recaptchaSuccess = false;

    $captchaModel = new M_sips();

    // Cek koneksi internet
    if ($this->isInternetAvailable()) {
        // Verifikasi reCAPTCHA
        $response = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=$secretKey&response=$captchaResponse");
        $responseKeys = json_decode($response, true);
        $recaptchaSuccess = $responseKeys["success"];
    }
    
    if ($recaptchaSuccess) {
        // reCAPTCHA berhasil
        $where = [
            'email' => $name,
            'password' => md5($pw),
        ];

        $model = new M_sips();
        $check = $model->getWhere('user', $where);

        if ($check) {
            session()->set('id', $check->id_user);
            session()->set('nama', $check->nama_user);
            session()->set('level', $check->level);
            session()->set('foto', $check->foto);
            session()->set('id_kelas', $check->id_kelas);
            session()->set('editmodul', $check->editmodul);
            return redirect()->to('home');
        } else {
            return redirect()->to('home/login')->with('error', 'Invalid email or password.');
        }
    } else {
        // Validasi CAPTCHA offline
        $storedCaptcha = session()->get('captcha_code'); // Retrieve stored CAPTCHA from session
        
        if ($storedCaptcha !== null) {
            if ($storedCaptcha === $backupCaptcha) {
                // CAPTCHA valid
                $where = [
                    'email' => $name,
                    'password' => md5($pw),
                ];

                $model = new M_sips();
                $check = $model->getWhere('user', $where);

                if ($check) {
                    session()->set('id', $check->id_user);
                    session()->set('nama', $check->nama_user);
                    session()->set('level', $check->level);
                    session()->set('foto', $check->foto);
                    session()->set('id_kelas', $check->id_kelas);
                    session()->set('editmodul', $check->editmodul);

                    return redirect()->to('home');
                } else {
                    return redirect()->to('home/login')->with('error', 'Invalid email or password.');
                }
            } else {
                // CAPTCHA tidak valid
                return redirect()->to('home/login')->with('error', 'Invalid CAPTCHA.');
            }
        } else {
            return redirect()->to('home/login')->with('error', 'CAPTCHA session is not set.');
        }
    }
}




    public function generateCaptcha()
{
    $code = substr(str_shuffle("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"), 0, 6);

    // Store the CAPTCHA code in the session
    session()->set('captcha_code', $code);

    // Generate the image
    $image = imagecreatetruecolor(120, 40);
    $bgColor = imagecolorallocate($image, 255, 255, 255);
    $textColor = imagecolorallocate($image, 0, 0, 0);

    imagefilledrectangle($image, 0, 0, 120, 40, $bgColor);
    imagestring($image, 5, 10, 10, $code, $textColor);

    // Set the content type header - in this case image/png
    header('Content-Type: image/png');

    // Output the image
    imagepng($image);

    // Free up memory
    imagedestroy($image);
}

private function isInternetAvailable()
{
    $connected = @fsockopen("www.google.com", 80);
    if ($connected) {
        fclose($connected);
        return true;
    }
    return false;
}

public function logout()
        {
           session()->destroy();
            return redirect()->to('Home/login');
    

}

//log

public function log() 
{
    if (session()->get('level') == 0 || session()->get('level') == 1) {

        $model = new M_sips();

        // Menambahkan log aktivitas ketika user mengakses halaman log
        $id_user = session()->get('id');
        $activity = 'Mengakses halaman log aktivitas';
        $this->addLog($id_user, $activity);
        
        // Ambil data pencarian dari input GET
        $id_user_search = $this->request->getGet('id_user');
        $nama_user_search = $this->request->getGet('nama_user');
        $activity_search = $this->request->getGet('activity');
        $timestamp_search = $this->request->getGet('timestamp');

        // Mengambil data log aktivitas dengan filter
        $data['logs'] = $model->searchActivityLogs($id_user_search, $nama_user_search, $activity_search, $timestamp_search);
        
        // Menambahkan data pencarian ke array data
        $data['id_user'] = $id_user_search;
        $data['nama_user'] = $nama_user_search;
        $data['activity'] = $activity_search;
        $data['timestamp'] = $timestamp_search;

        // Ambil setting seperti biasa
        $where = array('id_setting' => 1);
        $data['setting'] = $model->getWhere('setting', $where);

        $data['currentMenu'] = 'log';
        echo view('header', $data);
        echo view('menu', $data);
        echo view('log', $data);
        echo view('footer');
    } else {
        return redirect()->to('home/error');
    }
}


    public function addLog($id_user, $activity)
{
    $model = new M_sips(); // Gunakan model M_kedaikopi
    $id_user = session()->get('id');
    $data = [
        'id_user' => $id_user,
        'activity' => $activity,
        'timestamp' => date('Y-m-d H:i:s'),
    ];
    $model->tambah('activity_log', $data); // Pastikan 'activity_log' adalah nama tabel yang benar
}


//setting

public function setting()
{
    // Memeriksa level akses user
    if (session()->get('level') == 0||session()->get('level') == 1 ) {
      
        $model = new M_sips();
        
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses halaman setting'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        
       

    
        $id = 1; // id_toko yang diinginkan

        // Menyusun kondisi untuk query
        $where = array('id_setting' => $id);

        // Mengambil data dari tabel 'toko' berdasarkan kondisi
        $data['user'] = $model->getWhere('setting', $where);
 
        // Memuat view
        $where=array(
          'id_setting'=> 1
        );
        $data['setting'] = $model->getWhere('setting',$where);
        $data['currentMenu'] = 'setting'; 
        echo view('header', $data);
        echo view('menu', $data);
        echo view('setting', $data);
        echo view('footer', $data);
    } else {
        return redirect()->to('home/error');
    } 
}

public function aksisetting()
{
    $model = new M_sips();
    $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengubah data setting'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        
      
    
       
    $nama = $this->request->getPost('nama');
    $alamat = $this->request->getPost('alamat');
    $nohp = $this->request->getPost('nohp');
    $sekolah = $this->request->getPost('sekolah');
    $id = $this->request->getPost('id');
    $uploadedFile = $this->request->getFile('foto');

    $where = array('id_setting' => $id);

    $isi = array(
        'nama_setting' => $nama,
        'alamat' => $alamat,
        'nohp' => $nohp,
        'nama_sekolah'=> $sekolah,
        'updated_at' => date('Y-m-d H:i:s'), // Waktu saat produk dibuat
        'updated_by' => $id_user // ID user yang login
    );

    // Cek apakah ada file yang diupload
    if ($uploadedFile && $uploadedFile->isValid() && !$uploadedFile->hasMoved()) {
        $foto = $uploadedFile->getName();
        $model->upload($uploadedFile); // Mengupload file baru
        $isi['logo'] = $foto; // Menambahkan nama file baru ke array data
    }

    $model->edit('setting', $isi, $where);

    return redirect()->to('home/setting/'.$id);
}


//profile

public function profile($id)
{
    if (session()->get('level') == 0||session()->get('level') == 1||session()->get('level') == 2||session()->get('level') == 3 ) {
        $model = new M_sips();
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses halaman profile'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        
        
        $where= array('user.id_user'=>$id);
        $where=array('id_user'=>session()->get('id'));
        
        $data['user']=$model->getWhere('user',$where);
        $where=array(
            'id_setting'=> 1
          );
          $data['setting'] = $model->getWhere('setting',$where);

        echo view('header',$data);
        echo view ('menu',$data);
        echo view('profile',$data);
        echo view ('footer');
        }else{
        return redirect()->to('home/error');
        }
        
}
public function aksieprofile() 
{
    $model = new M_sips();

    $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengubah data profile'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        
       

    $a = $this->request->getPost('nama');
    $b = $this->request->getPost('email');
    $c = $this->request->getPost('nohp');
    $id = $this->request->getPost('id');
    $fotoName = $this->request->getPost('old_foto'); // Mengambil nama foto lama
    $foto = $this->request->getFile('foto');

    if ($foto && $foto->isValid()) {
        // Generate a new name for the uploaded file
        $newName = $foto->getRandomName();
        // Move the file to the target directory
        $foto->move(ROOTPATH . 'public/images', $newName);
        // Set the new file name to be saved in the database
        $fotoName = $newName;
    }

    $backupWhere = ['id_user' => $id];
    $existingBackup = $model->getWhere('backup_user', $backupWhere);

    if ($existingBackup) {
        // Hapus data lama di user_backup jika ada
        $model->hapus('backup_user', $backupWhere);
    }

    // Ambil data user lama berdasarkan id_user
    $userLama = $model->getUserById($id);

    // Simpan data user lama ke tabel user_backup
    $backupData = (array) $userLama;  // Ubah objek menjadi array
    $model->tambah('backup_user', $backupData);

    

    $isi = array(
        'nama_user' => $a,
        'email' => $b,
        'nohp' => $c,
        'foto' => $fotoName,
        'updated_at' => date('Y-m-d H:i:s'), // Waktu saat produk dibuat
        'updated_by' => $id_user // ID user yang login
    );

    $where = array('id_user' => $id);
    $model->edit('user', $isi, $where);

    return redirect()->to('home/profile/'.$id);
}

public function aksi_changepass() {
    $model = new M_sips();
    $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'mengubah password profile'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
       
    $oldPassword = $this->request->getPost('old');
    $newPassword = $this->request->getPost('new');
   

    // Dapatkan password lama dari database
    $currentPassword = $model->getPassword($id_user);

    // Verifikasi apakah password lama cocok
    if (md5($oldPassword) !== $currentPassword) {
        // Set pesan error jika password lama salah
        session()->setFlashdata('error', 'Password lama tidak valid.');
        return redirect()->back()->withInput();
    }
 
    // Update password baru
    $data = [
        'password' => md5($newPassword),
        'updated_by' => $id_user,
        'updated_at' => date('Y-m-d H:i:s')
    ];
    $where = ['id_user' => $id_user];
    
    $model->edit('user', $data, $where);
    
    // Set pesan sukses
    session()->setFlashdata('success', 'Password berhasil diperbarui.');
    return redirect()->to('home/profile/'.$id_user);
}

//pengumuman

public function agenda()
{
    if (session()->get('level') == 0||session()->get('level') == 1||session()->get('level') == 1||session()->get('level') == 2) {
    $model = new M_sips();
    $id_user = session()->get('id'); // Ambil ID user dari session
    $level = session()->get('level'); // Ambil level dari session
    $activity = 'Mengakses halaman agenda'; // Deskripsi aktivitas
    $this->addLog($id_user, $activity);

    $data['kelas'] = $model->joinkondisi('kelas', 'jurusan', 'kelas.id_jurusan=jurusan.id_jurusan', 'kelas.id_kelas', ['kelas.isdelete' => 0]);
    
    // Jika levelnya 5, hanya tampilkan agenda yang dibuat oleh user tersebut
    if ($level == 2) {
        $data['elly'] = $model->joinkondisi4('agenda', 'user', 'kelas', 'jurusan','agenda.id_user=user.id_user','agenda.id_kelas=kelas.id_kelas','kelas.id_jurusan=jurusan.id_jurusan', 'agenda.id_agenda', 
        [
            'created_by' => $id_user,
            'agenda.isdelete' => 0
        ]);
    } else {
        $data['elly'] = $model->joinkondisi4('agenda', 'user', 'kelas', 'jurusan','agenda.id_user=user.id_user','agenda.id_kelas=kelas.id_kelas','kelas.id_jurusan=jurusan.id_jurusan', 'agenda.id_agenda', ['agenda.isdelete' => 0]);
    }

    $data['backup_agenda'] = []; // Inisialisasi array untuk backup user

    foreach ($data['elly'] as $agenda) {
        $data['backup_agenda'][$agenda->id_agenda] = $model->getBackupagenda($agenda->id_agenda);
    }

    $where = ['id_setting' => 1];
    $data['setting'] = $model->getWhere('setting', $where);
    $data['currentMenu'] = 'agenda'; // Sesuaikan dengan menu yang aktif
    
    echo view('header', $data);
    echo view('menu', $data);
    echo view('agenda', $data);
    echo view('footer');
}else{
    return redirect()->to('home/error');

} 
}

public function sendWhatsappReminder()
{
    try {
        $model = new M_sips();
        
        log_message('info', 'Fungsi sendWhatsappReminder() dipanggil.');

        // Debug: Cek waktu server
        $server_time = date('Y-m-d H:i:s');
        log_message('info', 'Waktu server saat ini: ' . $server_time);

        // Ambil satu agenda yang tanggalnya hari ini dan waktunya sudah lewat
        $agenda = $model->getWhereres('agenda', [
            'status' => 0,
            'waktu <' => $server_time, 
            'isdelete' => 0,
            'sent_time IS NULL' => null // Pastikan agenda belum terkirim
        ]);

        // Debug: Cek hasil query
        log_message('info', 'Agenda ditemukan: ' . print_r($agenda, true));

        if (empty($agenda)) {
            return $this->response->setJSON(['success' => false, 'message' => 'Tidak ada agenda yang perlu dikirim']);
        }
        
        // Ambil hanya satu agenda untuk dikirim
        $g = $agenda[0];

        // Ambil semua data pengguna (user)
        $users = $model->getAll('user');
        
        // Cek apakah ada user yang memiliki id_user atau id_kelas yang sesuai dengan agenda
        $matched_user = null;
        foreach ($users as $user) {
            if ($user->id_user == $g->id_user || $user->id_kelas == $g->id_kelas) {
                $matched_user = $user;
                break;
            }
        }

        // Jika tidak ada user yang cocok
        if (!$matched_user) {
            return $this->response->setJSON(['success' => false, 'message' => 'Tidak ada pengguna yang cocok dengan agenda']);
        }

        // Ambil nomor telepon user yang cocok
        $phone_number = $matched_user->nohp;

        // Format pesan dengan bold pada label dan data waktu
        $message = "*Waktu:* *" . $g->waktu . "*\n\n" . $g->isi_agenda;

        log_message('info', 'Mengirim WA ke: ' . $phone_number . ' | Isi: ' . $message);

        // Kirim pesan WhatsApp
        $this->sendWhatsapp($phone_number, $message);

        // Update waktu terkirim pada agenda
        $model->edit('agenda', ['sent_time' => $server_time], ['id_agenda' => $g->id_agenda]);

        return $this->response->setJSON([
            'success' => true,
            'message' => 'Pesan WhatsApp terkirim ke ' . $phone_number,
            'agenda_id' => $g->id_agenda
        ]);

    } catch (Exception $e) {
        return $this->response->setJSON(['success' => false, 'message' => 'Terjadi kesalahan: ' . $e->getMessage()]);
    }
}







private function sendWhatsapp($phone_number, $message)
{
    log_message('info', 'Mengirim pesan ke: ' . $phone_number . ' dengan isi pesan: ' . $message);

    $instanceId = 'instance105962'; // Pindahkan ke sini
    $apiKey = 'iqvi9rz4tbusn6b8'; // Ganti dengan token API Anda
    $fromNumber = '+6282272729333'; // Ganti dengan nomor pengirim yang terdaftar

    $url = 'https://api.ultramsg.com/' . $instanceId . '/messages/chat'; // Pastikan ini tidak kosong

    $data = [
        'token' => $apiKey,
        'to' => $phone_number,
        'body' => $message,
        'from' => $fromNumber,
    ];

    $options = [
        'http' => [
            'method'  => 'POST',
            'header'  => "Content-Type: application/x-www-form-urlencoded\r\n",
            'content' => http_build_query($data),
        ],
    ];

    $context = stream_context_create($options);
    $result = file_get_contents($url, false, $context);

    if ($result === FALSE) {
        log_message('error', 'WhatsApp gagal dikirim ke ' . $phone_number);
        return false;
    }

    return true;
}



public function toggle_status_agenda($id_agenda, $status)
{
    // Update status agenda di database
    $model = new M_sips();
    $data = [
        'status' => $status
    ];

    // Pastikan untuk menambahkan nama tabel sebagai argumen pertama
    $model->edit('agenda', $data, ['id_agenda' => $id_agenda]);

    return $this->response->setJSON(['success' => true]);
}




public function tambah_agenda()
{
    if (session()->get('level') == 0||session()->get('level') == 1||session()->get('level') == 1||session()->get('level') == 2||session()->get('level') == 3||session()->get('level') == 4||session()->get('level') == 5 ) {

        $model = new M_sips();
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses form tambah agenda'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);

        
        $whereUser = ['level' => 3, 'isdelete' => 0];
        $data['murid'] = $model->getWhereres('user', $whereUser); // Ambil data user dengan level 5


        $data['kelas'] = $model->joinkondisi('kelas', 'jurusan', 'kelas.id_jurusan=jurusan.id_jurusan', 'kelas.id_kelas', ['kelas.isdelete' => 0]);
        

        $where = ['id_setting' => 1];
        $data['setting'] = $model->getWhere('setting', $where);
        $data['currentMenu'] = 'agenda'; // Sesuaikan dengan menu yang aktif
        echo view('header', $data);
        echo view('tambah_agenda', $data);
        echo view('footer');
    } else {
        return redirect()->to('home/error');
    }
}

public function edit_agenda($id)
{
    if (session()->get('level') == 0||session()->get('level') == 1||session()->get('level') == 1||session()->get('level') == 2||session()->get('level') == 3||session()->get('level') == 4||session()->get('level') == 5 ) {

        $model = new M_sips();
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses form edit agenda'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);

        $where= array('id_agenda'=>$id);
        $data['elly']=$model->getwhere('agenda',$where);

        $whereUser = ['level' => 3, 'isdelete' => 0];
        $data['murid'] = $model->getWhereres('user', $whereUser); // Ambil data user dengan level 5

        $data['kelas'] = $model->joinkondisi('kelas', 'jurusan', 'kelas.id_jurusan=jurusan.id_jurusan', 'kelas.id_kelas', ['kelas.isdelete' => 0]);
        
        $where = ['id_setting' => 1];
        $data['setting'] = $model->getWhere('setting', $where);
        $data['currentMenu'] = 'agenda'; // Sesuaikan dengan menu yang aktif
        echo view('header', $data);
        echo view('edit_agenda', $data);
        echo view('footer');
    } else {
        return redirect()->to('home/error');
    }
}

public function undo_edit_agenda($id)
{
    if (session()->get('level') == 0||session()->get('level') == 1||session()->get('level') == 1||session()->get('level') == 2||session()->get('level') == 3||session()->get('level') == 4||session()->get('level') == 5 ) {

        $model = new M_sips();
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses form undo edit agenda'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);

        // Menyaring jurusan berdasarkan ID
        $where = array('id_agenda' => $id);
        $data['elly'] = $model->getwhere('agenda', $where);

        // Pastikan data yang didapat adalah array atau objek yang dapat diiterasi
        if (!empty($data['elly'])) {
            // Inisialisasi array untuk backup jurusan
            $data['backup_agenda'] = [];

            // Mendapatkan data backup untuk setiap jurusan jika data 'elly' adalah array
            if (is_array($data['elly'])) {
                foreach ($data['elly'] as $agenda) {
                    $data['backup_agenda'][$agenda->id_agenda] = $model->getBackupagenda($agenda->id_agenda);
                }
            } else {
                // Jika hanya satu data, tetap memprosesnya
                $data['backup_agenda'][$data['elly']->id_agenda] = $model->getBackupagenda($data['elly']->id_agenda);
            }
        } else {
            $data['backup_agenda'] = []; // Jika data kosong, set backup_jurusan menjadi array kosong
        }

        $whereUser = ['level' => 3, 'isdelete' => 0];
        $data['murid'] = $model->getWhereres('user', $whereUser); // Ambil data user dengan level 5

        $data['kelas'] = $model->joinkondisi('kelas', 'jurusan', 'kelas.id_jurusan=jurusan.id_jurusan', 'kelas.id_kelas', ['kelas.isdelete' => 0]);

        $where = ['id_setting' => 1];
        $data['setting'] = $model->getWhere('setting', $where);
        $data['currentMenu'] = 'agenda'; // Sesuaikan dengan menu yang aktif
        echo view('header', $data);
        echo view('undo_edit_agenda', $data);
        echo view('footer');
    } else {
        return redirect()->to('home/error');
    }
}

public function aksi_tambah_agenda()
    {
        $model = new M_sips();
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Menambah data agenda'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
       
        $c = $this->request->getPost('isi');
        $d = $this->request->getPost('murid');
        $e = $this->request->getPost('kelas');
        $f = $this->request->getPost('waktu');
        
        
        $isi = array(
            
            'isi_agenda' => $c,
            'id_user' => $d,
            'id_kelas' => $e,
            'waktu' => $f,
            'created_at' => date('Y-m-d H:i:s'), // Waktu saat produk dibuat
            'created_by' => $id_user // ID user yang login
            
            

        );
        $model ->tambah('agenda', $isi);
        
        return redirect()->to('home/agenda');
    }

    public function aksi_edit_agenda()
{
    $model = new M_sips();
    $id_user = session()->get('id'); // Ambil ID user dari session
    $activity = 'Mengubah data agenda'; // Deskripsi aktivitas
    $this->addLog($id_user, $activity);
    
    $c = $this->request->getPost('isi');
    $d = $this->request->getPost('murid');
    $e = $this->request->getPost('kelas');
    $f = $this->request->getPost('waktu');
    $id = $this->request->getPost('id');
   
    $backupWhere = ['id_agenda' => $id];
    $existingBackup = $model->getWhere('backup_agenda', $backupWhere);

    if ($existingBackup) {
        // Hapus data lama di backup_pengumuman jika ada
        $model->hapus('backup_agenda', $backupWhere);
    }

    // Ambil data pengumuman lama berdasarkan id_pengumuman
    $pengumumanLama = $model->getagendaById($id);

    // Simpan data pengumuman lama ke tabel backup_pengumuman
    $backupData = (array) $pengumumanLama;  // Ubah objek menjadi array
    $model->tambah('backup_agenda', $backupData);
    
    
    
    // Array data yang akan diperbarui
    $isi = array(
        'isi_agenda' => $c,
        'id_user' => $d,
        'id_kelas' => $e,
        'waktu' => $f,
        'updated_at' => date('Y-m-d H:i:s'), // Waktu saat produk dibuat
        'updated_by' => $id_user // ID user yang login
    );

    $where = array('id_agenda' => $id);
    $model->edit('agenda', $isi, $where);
    
    return redirect()->to('home/agenda');
}


    public function aksi_unedit_agenda()
{
    $model = new M_sips();
    $id = $this->request->getPost('id'); // Ambil ID dari POST data
    
    if (!$id) {
        return redirect()->to('home/agenda')->with('error', 'ID user tidak ditemukan.');
    }
    
    $id_user = session()->get('id'); // Ambil ID user dari session
    $activity = 'Undo edit data agenda'; // Deskripsi aktivitas
    $this->addLog($id_user, $activity);
    
    // Ambil data dari tabel user_backup berdasarkan id_user
    $backupData = $model->getWhere('backup_agenda', ['id_agenda' => $id]);

    if ($backupData) {
        // Konversi data backup menjadi array
        $restoreData = (array) $backupData;

        // Hapus id_user dari array karena id_user tidak perlu di-update
        unset($restoreData['id_agenda']);

        // Update data di tabel user dengan data dari user_backup
        $model->edit('agenda', $restoreData, ['id_agenda' => $id]);

        // Hapus data dari tabel user_backup setelah di-restore
        $model->hapus('backup_agenda', ['id_agenda' => $id]);
    }

    return redirect()->to('home/agenda');
}

public function hapusagenda($id){
    $model = new M_sips();
    $id_user = session()->get('id'); // Ambil ID user dari session
    $activity = 'Menghapus data agenda'; // Deskripsi aktivitas
    $this->addLog($id_user, $activity);
    
    $data = [
        'isdelete' => 1,
        'deleted_by' => $id_user,
        'deleted_at' => date('Y-m-d H:i:s') // Format datetime untuk deleted_at
    ];
      
    $model->edit('agenda', $data, ['id_agenda' => $id]);

    // Hapus data dari tabel backup_kelas
$where = array('id_agenda' => $id);
$model->hapus('backup_agenda', $where);
    return redirect()->to('home/agenda');
}

public function restore_agenda()
    {   
        if (session()->get('level') == 0 || session()->get('level') == 1) {
    	$model= new M_sips();
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses halaman restore agenda'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        
        $data['elly'] = $model->joinkondisi4('agenda', 'user', 'kelas', 'jurusan','agenda.id_user=user.id_user','agenda.id_kelas=kelas.id_kelas','kelas.id_jurusan=jurusan.id_jurusan', 'agenda.id_agenda', ['agenda.isdelete' => 1]);
        
        $where=array(
            'id_setting'=> 1
          );
          $data['setting'] = $model->getWhere('setting',$where);
          $data['currentMenu'] = 'restore_user'; // Sesuaikan dengan menu yang aktif
        echo view('header', $data);
        echo view ('menu',$data);
        echo view('restore_agenda',$data);
        echo view ('footer');
         }else{
        return redirect()->to('home/error');
 
    } 
    }

    public function aksi_restore_agenda($id) {
        $model = new M_sips();
         $id_user = session()->get('id'); // Ambil ID user dari session
            $activity = 'Merestore agenda'; // Deskripsi aktivitas
            $this->addLog($id_user, $activity);
        
        // Data yang akan diupdate untuk mengembalikan produk
        $data = [
            'isdelete' => 0,
            'deleted_by' => null,
            'deleted_at' => null
        ];
    
        // Update data produk dengan kondisi id_produk sesuai
        $model->edit('agenda', $data, ['id_agenda' => $id]);
    
        return redirect()->to('home/restore_agenda');
    }

//kelas

public function kelas()
    {   
        if (session()->get('level') == 0||session()->get('level') == 1 ) {
    	$model= new M_sips();
        
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses halaman kelas'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        $where= array('id_kelas'=>$id);
        $data['satu']=$model->getwhere('kelas',$where);
      
        $data['elly'] = $model->join3(
            'kelas', 
            'user', 
            'jurusan', 
            'kelas.id_user = user.id_user', 
            'kelas.id_jurusan = jurusan.id_jurusan', 
            'kelas.id_kelas', 
            ['kelas.isdelete' => 0]
        );

       
        $data['backup_kelas'] = []; // Inisialisasi array untuk backup user

        foreach ($data['elly'] as $kelas) {
            $data['backup_kelas'][$kelas->id_kelas_kelas] = $model->getBackupKelas($kelas->id_kelas_kelas);
        }

        // Ambil data user dengan level 5 (untuk wali kelas)
        $whereUser = ['level' => 5, 'isdelete' => 0];
        $data['guru'] = $model->getWhereres('user', $whereUser); // Ambil data user dengan level 5


        $wherejurusan = ['isdelete' => 0];
        $data['jurusan'] = $model->getWhereres('jurusan', $wherejurusan); // Ambil data user dengan level 5

        $where=array(
            'id_setting'=> 1
          );
          $data['setting'] = $model->getWhere('setting',$where);
          $data['currentMenu'] = 'kelas'; // Sesuaikan dengan menu yang aktif
        echo view('header', $data);
        echo view ('menu',$data);
        echo view('kelas',$data);
        echo view ('footer');
         }else{
        return redirect()->to('home/error');
 
    } 
    }


    public function tambah_kelas()
    {
        if (session()->get('level') == 0 || session()->get('level') == 1) {
    
            $model = new M_sips();
            $id_user = session()->get('id'); // Ambil ID user dari session
            $activity = 'Mengakses form tambah kelas'; // Deskripsi aktivitas
            $this->addLog($id_user, $activity);
    
            // Ambil data user dengan level 5 (untuk wali kelas)
        $whereUser = ['level' => 5, 'isdelete' => 0];
        $data['guru'] = $model->getWhereres('user', $whereUser); // Ambil data user dengan level 5


        $wherejurusan = ['isdelete' => 0];
        $data['jurusan'] = $model->getWhereres('jurusan', $wherejurusan); // Ambil data user dengan level 5
    
            $where = ['id_setting' => 1];
            $data['setting'] = $model->getWhere('setting', $where);
            $data['currentMenu'] = 'kelas'; // Sesuaikan dengan menu yang aktif
            echo view('header', $data);
            echo view('tambah_kelas', $data);
            echo view('footer');
        } else {
            return redirect()->to('home/error');
        }
    }

    public function edit_kelas($id)
    {   
        if (session()->get('level') == 0||session()->get('level') == 1 ) {
    	$model= new M_sips();
        
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses form edit kelas'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        
        $where= array('id_kelas'=>$id);
        $data['elly']=$model->getwhere('kelas',$where);

        // Ambil data user dengan level 5 (untuk wali kelas)
        $whereUser = ['level' => 5, 'isdelete' => 0];
        $data['guru'] = $model->getWhereres('user', $whereUser); // Ambil data user dengan level 5


        $wherejurusan = ['isdelete' => 0];
        $data['jurusan'] = $model->getWhereres('jurusan', $wherejurusan); // Ambil data user dengan level 5

        $where=array(
            'id_setting'=> 1
          );
          $data['setting'] = $model->getWhere('setting',$where);
          $data['currentMenu'] = 'kelas'; // Sesuaikan dengan menu yang aktif
        echo view('header', $data);
        echo view('edit_kelas',$data);
        echo view ('footer');
         }else{
        return redirect()->to('home/error');
 
    } 
    }


    public function undo_edit_kelas($id)
{
    if (session()->get('level') == 0 || session()->get('level') == 1) {

        $model = new M_sips();
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses form undo edit kelas'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);

        // Menyaring jurusan berdasarkan ID
        $where = array('id_kelas' => $id);
        $data['elly'] = $model->getwhere('kelas', $where);

        // Pastikan data yang didapat adalah array atau objek yang dapat diiterasi
        if (!empty($data['elly'])) {
            // Inisialisasi array untuk backup jurusan
            $data['backup_kelas'] = [];

            // Mendapatkan data backup untuk setiap jurusan jika data 'elly' adalah array
            if (is_array($data['elly'])) {
                foreach ($data['elly'] as $kelas) {
                    $data['backup_kelas'][$kelas->id_kelas] = $model->getBackupKelas($kelas->id_kelas);
                }
            } else {
                // Jika hanya satu data, tetap memprosesnya
                $data['backup_kelas'][$data['elly']->id_kelas] = $model->getBackupKelas($data['elly']->id_kelas);
            }
        } else {
            $data['backup_kelas'] = []; // Jika data kosong, set backup_jurusan menjadi array kosong
        }

        $whereUser = ['level' => 5, 'isdelete' => 0];
        $data['guru'] = $model->getWhereres('user', $whereUser); // Ambil data user dengan level 5


        $wherejurusan = ['isdelete' => 0];
        $data['jurusan'] = $model->getWhereres('jurusan', $wherejurusan); // Ambil data user dengan level 5

        $where = ['id_setting' => 1];
        $data['setting'] = $model->getWhere('setting', $where);
        $data['currentMenu'] = 'kelas'; // Sesuaikan dengan menu yang aktif
        echo view('header', $data);
        echo view('undo_edit_kelas', $data);
        echo view('footer');
    } else {
        return redirect()->to('home/error');
    }
}
public function aksi_tambah_kelas()
{
    $model = new M_sips();
    $id_user = session()->get('id'); // Ambil ID user dari session
    $activity = 'Menambah data kelas'; // Deskripsi aktivitas
    $this->addLog($id_user, $activity);
   
    // Ambil inputan kelas
    $kelas_input = $this->request->getPost('kelas');
    $jurusan = $this->request->getPost('jurusan') ?: '';

    $wali = $this->request->getPost('wali');
    // Ekstrak angka Romawi dari inputan menggunakan regex
    preg_match('/\b(I|II|III|IV|V|VI|VII|VIII|IX|X|XI|XII)\b/', $kelas_input, $matches);
   
    // Jika ditemukan angka Romawi, ambil nilainya, jika tidak, anggap tidak diketahui
    $kelas = isset($matches[0]) ? $matches[0] : 'Tidak Diketahui';
   
    // Tentukan jenjang berdasarkan angka Romawi
    $jenjang = '';
    switch ($kelas) {
        case 'I':
        case 'II':
        case 'III':
        case 'IV':
        case 'V':
        case 'VI':
            $jenjang = 'SD';
            break;
        case 'VII':
        case 'VIII':
        case 'IX':
            $jenjang = 'SMP';
            break;
        case 'X':
        case 'XI':
        case 'XII':
            $jenjang = 'SMK';
            break;
        default:
            $jenjang = 'Tidak Diketahui'; // Jika kelas tidak dikenali
    }

    $isi = array(
        'nama_kelas' => $kelas_input, // Simpan input kelas lengkap
        'id_user' => $wali, // Simpan input kelas lengkap
        'jurusan' => $jurusan, // Simpan input kelas lengkap
        'jenjang' => $jenjang, // Tambahkan jenjang ke dalam array
        'created_at' => date('Y-m-d H:i:s'), // Waktu saat data dibuat
        'created_by' => $id_user // ID user yang login
    );
    
    $model->tambah('kelas', $isi);
    
    return redirect()->to('home/kelas');
}


public function aksi_edit_kelas()
{
    $model = new M_sips();
    $id_user = session()->get('id'); // Ambil ID user dari session
    $activity = 'Mengubah data kelas'; // Deskripsi aktivitas
    $this->addLog($id_user, $activity);
    
    $kelas_input = $this->request->getPost('kelas');
    $jurusan = $this->request->getPost('jurusan');
    $wali = $this->request->getPost('wali');
    $id = $this->request->getPost('id');
    

    $backupWhere = ['id_kelas' => $id];
    $existingBackup = $model->getWhere('backup_kelas', $backupWhere);

    if ($existingBackup) {
        // Hapus data lama di backup_kelas jika ada
        $model->hapus('backup_kelas', $backupWhere);
    }

    // Ambil data kelas lama berdasarkan id
    $kelasLama = $model->getKelasById($id);
    
    // Simpan data kelas lama ke tabel backup_kelas
    $backupData = (array) $kelasLama;  // Ubah objek menjadi array
    $model->tambah('backup_kelas', $backupData);
    
    // Ekstrak angka Romawi dari inputan menggunakan regex
    preg_match('/\b(I|II|III|IV|V|VI|VII|VIII|IX|X|XI|XII)\b/', $kelas_input, $matches);
   
    // Jika ditemukan angka Romawi, ambil nilainya, jika tidak, anggap tidak diketahui
    $kelas = isset($matches[0]) ? $matches[0] : 'Tidak Diketahui';
   
    // Tentukan jenjang berdasarkan angka Romawi
    $jenjang = '';
    switch ($kelas) {
        case 'I':
        case 'II':
        case 'III':
        case 'IV':
        case 'V':
        case 'VI':
            $jenjang = 'SD';
            break;
        case 'VII':
        case 'VIII':
        case 'IX':
            $jenjang = 'SMP';
            break;
        case 'X':
        case 'XI':
        case 'XII':
            $jenjang = 'SMK';
            break;
        default:
            $jenjang = 'Tidak Diketahui'; // Jika kelas tidak dikenali
    }

    $isi = array(
        'nama_kelas' => $kelas_input, // Simpan input kelas lengkap
        'id_user' => $wali, // Simpan input kelas lengkap
        'jurusan' => $jurusan, // Simpan input kelas lengkap
        'jenjang' => $jenjang, // Tambahkan jenjang ke dalam array
        'updated_at' => date('Y-m-d H:i:s'), // Waktu saat data diperbarui
        'updated_by' => $id_user // ID user yang login
    );

    

    $where = array('id_kelas' => $id);
    print_r($where);
    $model->edit('kelas', $isi, $where);
    
     return redirect()->to('home/kelas');
}


    public function hapuskelas($id){
        $model = new M_sips();
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Menghapus data kelas'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        $data = [
            'isdelete' => 1,
            'deleted_by' => $id_user,
            'deleted_at' => date('Y-m-d H:i:s') // Format datetime untuk deleted_at
        ];
       
        
          
        $model->edit('kelas', $data, ['id_kelas' => $id]);

        //Hapus data dari tabel backup_kelas
    $where = array('id_kelas' => $id);
    $model->hapus('backup_kelas', $where);

        return redirect()->to('home/kelas');
   }

   public function aksi_unedit_kelas()
{
    $model = new M_sips();
    $id = $this->request->getPost('id'); // Ambil ID dari POST data
    
    if (!$id) {
        return redirect()->to('home/kelas')->with('error', 'ID kelas tidak ditemukan.');
    }
    
    $id_user = session()->get('id'); // Ambil ID user dari session
    $activity = 'Undo edit data kelas'; // Deskripsi aktivitas
    $this->addLog($id_user, $activity);
    
    // Ambil data dari tabel user_backup berdasarkan id_user
    $backupData = $model->getWhere('backup_kelas', ['id_kelas' => $id]);

    if ($backupData) {
        // Konversi data backup menjadi array
        $restoreData = (array) $backupData;

        // Hapus id_user dari array karena id_user tidak perlu di-update
        unset($restoreData['id_kelas']);

        // Update data di tabel user dengan data dari user_backup
        $model->edit('kelas', $restoreData, ['id_kelas' => $id]);

        // Hapus data dari tabel user_backup setelah di-restore
        $model->hapus('backup_kelas', ['id_kelas' => $id]);
    }

    return redirect()->to('home/kelas');
}

public function restore_kelas()
    {   
        if (session()->get('level') == 0 || session()->get('level') == 1) {

    	$model= new M_sips();
        
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses halaman restore kelas'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        
      
        $data['elly'] = $model->join3(
            'kelas', 
            'user', 
            'jurusan', 
            'kelas.id_user = user.id_user', 
            'kelas.id_jurusan = jurusan.id_jurusan', 
            'kelas.id_kelas', 
            ['kelas.isdelete' => 1]
        );
        $where=array(
            'id_setting'=> 1
          );
          $data['setting'] = $model->getWhere('setting',$where);
          $data['currentMenu'] = 'restore_kelas'; // Sesuaikan dengan menu yang aktif
        echo view('header', $data);
        echo view ('menu',$data);
        echo view('restore_kelas',$data);
        echo view ('footer');
         }else{
        return redirect()->to('home/error');
 
    } 
    }

    public function aksi_restore_kelas($id) {
        $model = new M_sips();
         $id_user = session()->get('id'); // Ambil ID user dari session
            $activity = 'Merestore kelas'; // Deskripsi aktivitas
            $this->addLog($id_user, $activity);
        
        // Data yang akan diupdate untuk mengembalikan produk
        $data = [
            'isdelete' => 0,
            'deleted_by' => null,
            'deleted_at' => null
        ];
    
        // Update data produk dengan kondisi id_produk sesuai
        $model->edit('kelas', $data, ['id_kelas' => $id]);
    
        return redirect()->to('home/restore_kelas');
    }


    //user

    public function user()
{
    if (session()->get('level') == 0 || session()->get('level') == 1) {

        $model = new M_sips();
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses halaman user'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);

        $data['kelas'] = $model->tampil('kelas', 'id_kelas');
        $data['elly'] = $model->tampil('user', 'id_user');
        $data['backup_users'] = []; // Inisialisasi array untuk backup user

        foreach ($data['elly'] as $user) {
            $data['backup_users'][$user->id_user] = $model->getBackupUser($user->id_user);
        }



        $data['satu'] = $model->getWhere('user', ['id_user' => $id_user]);

        $where = ['id_setting' => 1];
        $data['setting'] = $model->getWhere('setting', $where);
        $data['currentMenu'] = 'user'; // Sesuaikan dengan menu yang aktif
        echo view('header', $data);
        echo view('menu', $data);
        echo view('user', $data);
        echo view('footer');
    } else {
        return redirect()->to('home/error');
    }
}

public function tambah_user()
{
    if (session()->get('level') == 0 || session()->get('level') == 1) {

        $model = new M_sips();
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses form tambah user'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);

        // $data['kelas'] = $model->tampil('kelas', 'id_kelas');
        $data['kelas'] = $model->joinkondisi('kelas', 'jurusan', 'kelas.id_jurusan=jurusan.id_jurusan', 'kelas.id_kelas', ['kelas.isdelete' => 0]);

        $where = ['id_setting' => 1];
        $data['setting'] = $model->getWhere('setting', $where);
        $data['currentMenu'] = 'user'; // Sesuaikan dengan menu yang aktif
        echo view('header', $data);
        echo view('tambah_user', $data);
        echo view('footer');
    } else {
        return redirect()->to('home/error');
    }
}

public function edit_user($id)
{
    if (session()->get('level') == 0 || session()->get('level') == 1) {

        $model = new M_sips();
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses form edit user'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        $data['kelas'] = $model->joinkondisi('kelas', 'jurusan', 'kelas.id_jurusan=jurusan.id_jurusan', 'kelas.id_kelas', ['kelas.isdelete' => 0]);
        $where= array('id_user'=>$id);
        $data['elly']=$model->getwhere('user',$where);

        $where = ['id_setting' => 1];
        $data['setting'] = $model->getWhere('setting', $where);
        $data['currentMenu'] = 'user'; // Sesuaikan dengan menu yang aktif
        echo view('header', $data);
        echo view('edit_user', $data);
        echo view('footer');
    } else {
        return redirect()->to('home/error');
    }
}


public function undo_edit_user($id)
{
    if (session()->get('level') == 0 || session()->get('level') == 1) {

        $model = new M_sips();
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses form undo edit user'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        $data['kelas'] = $model->joinkondisi('kelas', 'jurusan', 'kelas.id_jurusan=jurusan.id_jurusan', 'kelas.id_kelas', ['kelas.isdelete' => 0]);
        // Menyaring jurusan berdasarkan ID
        $where = array('id_user' => $id);
        $data['elly'] = $model->getwhere('user', $where);

        // Pastikan data yang didapat adalah array atau objek yang dapat diiterasi
        if (!empty($data['elly'])) {
            // Inisialisasi array untuk backup jurusan
            $data['backup_user'] = [];

            // Mendapatkan data backup untuk setiap jurusan jika data 'elly' adalah array
            if (is_array($data['elly'])) {
                foreach ($data['elly'] as $user) {
                    $data['backup_user'][$user->id_user] = $model->getBackupUser($user->id_user);
                }
            } else {
                // Jika hanya satu data, tetap memprosesnya
                $data['backup_user'][$data['elly']->id_user] = $model->getBackupUser($data['elly']->id_user);
            }
        } else {
            $data['backup_user'] = []; // Jika data kosong, set backup_jurusan menjadi array kosong
        }


        $where = ['id_setting' => 1];
        $data['setting'] = $model->getWhere('setting', $where);
        $data['currentMenu'] = 'user'; // Sesuaikan dengan menu yang aktif
        echo view('header', $data);
       
        echo view('undo_edit_user', $data);
        echo view('footer');
    } else {
        return redirect()->to('home/error');
    }
}


public function aksi_tambah_user()
    {
        $model = new M_sips();
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Menambah user'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        
       
      
        $a = $this->request->getPost('nama');
        $b = $this->request->getPost('level');
        $c = md5($this->request->getPost('password'));
        $d = $this->request->getPost('nis');
        $e = $this->request->getPost('nisn');
        $f = $this->request->getPost('kelas');
        $i = $this->request->getPost('email');
        $j = $this->request->getPost('nohp');
        $k = $this->request->getPost('nik');
        $l = $this->request->getPost('nuptk');
    
        
        $isi = array(
            'nama_user' => $a,
            'level' => $b,
            'password' => $c,
           'nis' => $d,
            'nisn' => $e,
            'id_kelas' => $f,
            'email' => $i,
            'nohp' => $j,
            'nik' => $k,
            'nuptk' => $l,
            'created_at' => date('Y-m-d H:i:s'), // Waktu saat produk dibuat
            'created_by' => $id_user // ID user yang login
            

        );
        $model ->tambah('user', $isi);
        
        return redirect()->to('home/user');
    }

    public function aksi_edit_user()
{
    $model = new M_sips();
    $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengubah data user'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        
        // Mengambil data log aktivitas dari model
       
    $a = $this->request->getPost('nama');
    $b = $this->request->getPost('level');
    $d = $this->request->getPost('nis');
    $e = $this->request->getPost('nisn');
    $f = $this->request->getPost('kelas');
    $i = $this->request->getPost('email');
    $j = $this->request->getPost('nohp');
    $k = $this->request->getPost('nik');
    $l = $this->request->getPost('nuptk');
    // $g = $this->request->getPost('editmodul');
    $id = $this->request->getPost('id');
   

    $backupWhere = ['id_user' => $id];
    $existingBackup = $model->getWhere('backup_user', $backupWhere);

    if ($existingBackup) {
        // Hapus data lama di user_backup jika ada
        $model->hapus('backup_user', $backupWhere);
    }

    // Ambil data user lama berdasarkan id_user
    $userLama = $model->getUserById($id);

    // Simpan data user lama ke tabel user_backup
    $backupData = (array) $userLama;  // Ubah objek menjadi array
    $model->tambah('backup_user', $backupData);


    if ($b == 1) {
        $d = null; // NIS
        $e = null; // NISN
        $f = null; // Kelas
        $l = null;
       
    } elseif (in_array($b, [2])) {
        $f = null; // Kelas
        $d = null;
        $e = null;

    } elseif ($b == 3) {
        $k = null; 
        $l = null;  
       
    }

    $isi = array(
        'nama_user' => $a,
        'level' => $b,
        'nis' => $d,
        'nisn' => $e,
        'id_kelas' => $f,
        'email' => $i,
        'nohp' => $j,
        'nik' => $k,
        'nuptk' => $l,
        'updated_at' => date('Y-m-d H:i:s'), // Waktu saat produk dibuat
        'updated_by' => $id_user // ID user yang login
    );

    $where = array('id_user' => $id);
    $model->edit('user', $isi, $where);

    return redirect()->to('home/user');
}

public function aksi_reset($id)
{
    $model = new M_sips();
    $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mereset password user'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        
       
      
    $where = array('id_user' => $id);
    
    $isi = array(
        'password' => md5('12345'),
        'updated_at' => date('Y-m-d H:i:s'),
        'updated_by' => $id_user
    );
    $model->edit('user', $isi, $where);

    return redirect()->to('home/user');
}

public function hapususer($id){
    $model = new M_sips();
    $id_user = session()->get('id'); // Ambil ID user dari session
    $activity = 'Menghapus data user'; // Deskripsi aktivitas
    $this->addLog($id_user, $activity);
    
    $data = [
        'isdelete' => 1,
        'deleted_by' => $id_user,
        'deleted_at' => date('Y-m-d H:i:s') // Format datetime untuk deleted_at
    ];
      
    $model->edit('user', $data, ['id_user' => $id]);

    // Hapus data dari tabel backup_kelas
$where = array('id_user' => $id);
$model->hapus('backup_user', $where);
    return redirect()->to('home/user');
}

public function restore_user()
    {   
        if (session()->get('level') == 0 || session()->get('level') == 1) {
    	$model= new M_sips();
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses halaman restore user'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        
        
        $data['elly'] = $model->join4('user', 'kelas', 'user.id_kelas=kelas.id_kelas', 'user.id_user', ['user.isdelete' => 1]);
        $where=array(
            'id_setting'=> 1
          );
          $data['setting'] = $model->getWhere('setting',$where);
          $data['currentMenu'] = 'restore_user'; // Sesuaikan dengan menu yang aktif
        echo view('header', $data);
        echo view ('menu',$data);
        echo view('restore_user',$data);
        echo view ('footer');
         }else{
        return redirect()->to('home/error');
 
    } 
    }

    public function aksi_restore_user($id) {
        $model = new M_sips();
         $id_user = session()->get('id'); // Ambil ID user dari session
            $activity = 'Merestore user'; // Deskripsi aktivitas
            $this->addLog($id_user, $activity);
        
        // Data yang akan diupdate untuk mengembalikan produk
        $data = [
            'isdelete' => 0,
            'deleted_by' => null,
            'deleted_at' => null
        ];
    
        // Update data produk dengan kondisi id_produk sesuai
        $model->edit('user', $data, ['id_user' => $id]);
    
        return redirect()->to('home/restore_user');
    }

    public function aksi_unedit_user()
{
    $model = new M_sips();
    $id = $this->request->getPost('id'); // Ambil ID dari POST data
    
    if (!$id) {
        return redirect()->to('home/user')->with('error', 'ID user tidak ditemukan.');
    }
    
    $id_user = session()->get('id'); // Ambil ID user dari session
    $activity = 'Undo edit data user'; // Deskripsi aktivitas
    $this->addLog($id_user, $activity);
    
    // Ambil data dari tabel user_backup berdasarkan id_user
    $backupData = $model->getWhere('backup_user', ['id_user' => $id]);

    if ($backupData) {
        // Konversi data backup menjadi array
        $restoreData = (array) $backupData;

        // Hapus id_user dari array karena id_user tidak perlu di-update
        unset($restoreData['id_user']);

        // Update data di tabel user dengan data dari user_backup
        $model->edit('user', $restoreData, ['id_user' => $id]);

        // Hapus data dari tabel user_backup setelah di-restore
        $model->hapus('backup_user', ['id_user' => $id]);
    }

    return redirect()->to('home/user');
}



//pemberitahuan



public function agendamurid()
{
    if (session()->get('level') >= 0 && session()->get('level') <= 3) {
        $model = new M_sips();
        $id_user = session()->get('id');
        $id_kelas = session()->get('id_kelas'); // Mendapatkan id_kelas dari session
        $activity = 'Mengakses halaman agenda murid';
        $this->addLog($id_user, $activity);

        // Jika level pengguna adalah 3, filter agenda berdasarkan id_user dan id_kelas
        if (session()->get('level') == 3) {
            $data['elly'] = $model->joinkondisi4or(
                'agenda', 
                'user', 
                'kelas', 
                'jurusan',
                'agenda.id_user=user.id_user', 
                'agenda.id_kelas=kelas.id_kelas',
                'kelas.id_jurusan=jurusan.id_jurusan', 
                'agenda.id_agenda', 
                [
                    'agenda.isdelete' => 0,
                    // Gabungkan kondisi id_user atau id_kelas dengan operator OR
                    'agenda.id_user' => $id_user,     // Filter berdasarkan id_user
                    'agenda.id_kelas' => $id_kelas    // Filter berdasarkan id_kelas
                ]
            );
        } else {
            // Jika level bukan 3, ambil semua agenda yang tidak dihapus
            $data['elly'] = $model->joinkondisi4(
                'agenda', 
                'user', 
                'kelas', 
                'jurusan',
                'agenda.id_user=user.id_user', 
                'agenda.id_kelas=kelas.id_kelas',
                'kelas.id_jurusan=jurusan.id_jurusan', 
                'agenda.id_agenda', 
                ['agenda.isdelete' => 0]
            );
        }

        $where = ['id_setting' => 1];
        $data['setting'] = $model->getWhere('setting', $where);
        $data['currentMenu'] = 'agendamurid';
        
        echo view('header', $data);
        echo view('menu', $data);
        echo view('agendamurid', $data); // Kirim data pengumuman ke view pemberitahuan
        echo view('footer');
    } else {
        return redirect()->to('home/error');
    }
}


public function jurusan()
{
    if (session()->get('level') == 0 || session()->get('level') == 1) {

        $model = new M_sips();
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses halaman jurusan'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);

        $data['elly'] = $model->tampil('jurusan', 'id_jurusan');
        $data['backup_jurusan'] = []; // Inisialisasi array untuk backup user

        foreach ($data['elly'] as $jurusan) {
            $data['backup_jurusan'][$jurusan->id_jurusan] = $model->getBackupjurusan($jurusan->id_jurusan);
        }


        $where = ['id_setting' => 1];
        $data['setting'] = $model->getWhere('setting', $where);
        $data['currentMenu'] = 'jurusan'; // Sesuaikan dengan menu yang aktif
        echo view('header', $data);
        echo view('menu', $data);
        echo view('jurusan', $data);
        echo view('footer');
    } else {
        return redirect()->to('home/error');
    }
}

public function tambah_jurusan()
{
    if (session()->get('level') == 0 || session()->get('level') == 1) {

        $model = new M_sips();
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses form tambah jurusan'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);

        

        $where = ['id_setting' => 1];
        $data['setting'] = $model->getWhere('setting', $where);
        $data['currentMenu'] = 'jurusan'; // Sesuaikan dengan menu yang aktif
        echo view('header', $data);
        echo view('tambah_jurusan', $data);
        echo view('footer');
    } else {
        return redirect()->to('home/error');
    }
}


public function edit_jurusan($id)
{
    if (session()->get('level') == 0 || session()->get('level') == 1) {

        $model = new M_sips();
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses form edit jurusan'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);

        $where= array('id_jurusan'=>$id);
        $data['elly']=$model->getwhere('jurusan',$where);

        $where = ['id_setting' => 1];
        $data['setting'] = $model->getWhere('setting', $where);
        $data['currentMenu'] = 'jurusan'; // Sesuaikan dengan menu yang aktif
        echo view('header', $data);
        echo view('edit_jurusan', $data);
        echo view('footer');
    } else {
        return redirect()->to('home/error');
    }
}

public function undo_edit_jurusan($id)
{
    if (session()->get('level') == 0 || session()->get('level') == 1) {

        $model = new M_sips();
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses form undo edit jurusan'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);

        // Menyaring jurusan berdasarkan ID
        $where = array('id_jurusan' => $id);
        $data['elly'] = $model->getwhere('jurusan', $where);

        // Pastikan data yang didapat adalah array atau objek yang dapat diiterasi
        if (!empty($data['elly'])) {
            // Inisialisasi array untuk backup jurusan
            $data['backup_jurusan'] = [];

            // Mendapatkan data backup untuk setiap jurusan jika data 'elly' adalah array
            if (is_array($data['elly'])) {
                foreach ($data['elly'] as $jurusan) {
                    $data['backup_jurusan'][$jurusan->id_jurusan] = $model->getBackupjurusan($jurusan->id_jurusan);
                }
            } else {
                // Jika hanya satu data, tetap memprosesnya
                $data['backup_jurusan'][$data['elly']->id_jurusan] = $model->getBackupjurusan($data['elly']->id_jurusan);
            }
        } else {
            $data['backup_jurusan'] = []; // Jika data kosong, set backup_jurusan menjadi array kosong
        }

        $where = ['id_setting' => 1];
        $data['setting'] = $model->getWhere('setting', $where);
        $data['currentMenu'] = 'jurusan'; // Sesuaikan dengan menu yang aktif
        echo view('header', $data);
        echo view('undo_edit_jurusan', $data);
        echo view('footer');
    } else {
        return redirect()->to('home/error');
    }
}

    public function aksi_tambah_jurusan()
{
    $model = new M_sips();
    $id_user = session()->get('id'); // Ambil ID user dari session
    $activity = 'Menambah data jurusan'; // Deskripsi aktivitas
    $this->addLog($id_user, $activity);
   
    // Ambil inputan jurusan
    $jurusan = $this->request->getPost('jurusan');
  

    $isi = array(
        'nama_jurusan' => $jurusan, // Simpan input jurusan lengkap
        'created_at' => date('Y-m-d H:i:s'), // Waktu saat data dibuat
        'created_by' => $id_user // ID user yang login
    );
    
    $model->tambah('jurusan', $isi);
    
    return redirect()->to('home/jurusan');
}


    

public function aksi_edit_jurusan()
{
    $model = new M_sips();
    $id_user = session()->get('id'); // Ambil ID user dari session
    $activity = 'Mengubah data jurusan'; // Deskripsi aktivitas
    $this->addLog($id_user, $activity);
    
    $jurusan = $this->request->getPost('jurusan');
    $id = $this->request->getPost('id');
    

    $backupWhere = ['id_jurusan' => $id];
    $existingBackup = $model->getWhere('backup_jurusan', $backupWhere);

    if ($existingBackup) {
        // Hapus data lama di backup_jurusan jika ada
        $model->hapus('backup_jurusan', $backupWhere);
    }

    // Ambil data jurusan lama berdasarkan id
    $jurusanLama = $model->getjurusanById($id);
    
    // Simpan data jurusan lama ke tabel backup_jurusan
    $backupData = (array) $jurusanLama;  // Ubah objek menjadi array
    $model->tambah('backup_jurusan', $backupData);
    
    

    $isi = array(
        'nama_jurusan' => $jurusan, // Simpan input jurusan lengkap
        'updated_at' => date('Y-m-d H:i:s'), // Waktu saat data diperbarui
        'updated_by' => $id_user // ID user yang login
    );

    

    $where = array('id_jurusan' => $id);
    print_r($where);
    $model->edit('jurusan', $isi, $where);
    
     return redirect()->to('home/jurusan');
}


    public function hapusjurusan($id){
        $model = new M_sips();
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Menghapus data jurusan'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        $data = [
            'isdelete' => 1,
            'deleted_by' => $id_user,
            'deleted_at' => date('Y-m-d H:i:s') // Format datetime untuk deleted_at
        ];
       
        
          
        $model->edit('jurusan', $data, ['id_jurusan' => $id]);

        //Hapus data dari tabel backup_jurusan
    $where = array('id_jurusan' => $id);
    $model->hapus('backup_jurusan', $where);

        return redirect()->to('home/jurusan');
   }

   public function aksi_unedit_jurusan()
{
    $model = new M_sips();
    $id = $this->request->getPost('id'); // Ambil ID dari POST data
    
    if (!$id) {
        return redirect()->to('home/jurusan')->with('error', 'ID jurusan tidak ditemukan.');
    }
    
    $id_user = session()->get('id'); // Ambil ID user dari session
    $activity = 'Undo edit data jurusan'; // Deskripsi aktivitas
    $this->addLog($id_user, $activity);
    
    // Ambil data dari tabel user_backup berdasarkan id_user
    $backupData = $model->getWhere('backup_jurusan', ['id_jurusan' => $id]);

    if ($backupData) {
        // Konversi data backup menjadi array
        $restoreData = (array) $backupData;

        // Hapus id_user dari array karena id_user tidak perlu di-update
        unset($restoreData['id_jurusan']);

        // Update data di tabel jurusan dengan data dari user_backup
        $model->edit('jurusan', $restoreData, ['id_jurusan' => $id]);

        // Hapus data dari tabel jurusan_backup setelah di-restore
        $model->hapus('backup_jurusan', ['id_jurusan' => $id]);
    }

    return redirect()->to('home/jurusan');
}

public function restore_jurusan()
    {   
        if (session()->get('level') == 0 || session()->get('level') == 1) {

    	$model= new M_sips();
        
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses halaman restore jurusan'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        
      
        $data['elly'] = $model->tampil('jurusan', 'id_jurusan');
        $where=array(
            'id_setting'=> 1
          );
          $data['setting'] = $model->getWhere('setting',$where);
          $data['currentMenu'] = 'restore_jurusan'; // Sesuaikan dengan menu yang aktif
        echo view('header', $data);
        echo view ('menu',$data);
        echo view('restore_jurusan',$data);
        echo view ('footer');
         }else{
        return redirect()->to('home/error');
 
    } 
    }

    public function aksi_restore_jurusan($id) {
        $model = new M_sips();
         $id_user = session()->get('id'); // Ambil ID user dari session
            $activity = 'Merestore jurusan'; // Deskripsi aktivitas
            $this->addLog($id_user, $activity);
        
        // Data yang akan diupdate untuk mengembalikan produk
        $data = [
            'isdelete' => 0,
            'deleted_by' => null,
            'deleted_at' => null
        ];
    
        // Update data produk dengan kondisi id_produk sesuai
        $model->edit('jurusan', $data, ['id_jurusan' => $id]);
    
        return redirect()->to('home/restore_jurusan');
    }

}
