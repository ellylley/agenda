<div class="main-content container-fluid">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class='breadcrumb-header'>
                </nav>
            </div>
        </div>
    </div>

    <div class="row" id="table-bordered">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title" align="center">RESTORE</h4>
                </div>
                <div class="card-content">
                    <!-- table bordered -->
                    <div class="table-responsive">
                        <table class="table table-bordered mb-0">
                            <thead>
                                <tr>
                                    <th>No</th>      
                                    <th>Nama</th>
                                    <th>Level</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $no = 1;
                                foreach ($elly as $gou) {
                                  
                                      
                                ?>
                                    <tr>
                                        <td><?= $no++ ?></td>
                                        <td><?= $gou->nama_user ?></td> 
                                       
                                        <td><?php 
                                            if ($gou->level == 1) {
                                                echo "Admin";
                                            } else if ($gou->level == 2) {
                                                echo "Guru";
                                            } else if ($gou->level == 3) {
                                                echo "Murid";
                                    
                                            }
                                        ?></td>
                                        <td>
                                        <button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#userDetailModal" onclick="showUserDetail('<?= $gou->nama_user ?>', '<?= $gou->email ?>', '<?= $gou->nohp ?>', '<?= $gou->level ?>', '<?= $gou->jurusan . " " . $gou->nama_kelas ?>', '<?= $gou->nis ?>', '<?= $gou->nisn ?>', '<?= $gou->nik ?>', '<?= $gou->nuptk ?>')">Detail</button>
                                        <a href="<?= base_url('home/aksi_restore_user/'.$gou->id_user)?>">
    <button class="btn btn-danger btn-sm ">Restore</button>
    </a>
                                        </td>
                                    </tr>
                                <?php
                                    
                                }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div> <!-- end of .card -->
        </div> <!-- end of .col-12 -->
    </div> <!-- end of .row -->
</div> <!-- end of .main-content container-fluid -->

<!-- Modal -->
<div class="modal fade" id="userDetailModal" tabindex="-1" aria-labelledby="userDetailModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="userDetailModalLabel">Detail User</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <p><strong>Nama:</strong> <span id="modalUserName"></span></p>
        <p><strong>Email:</strong> <span id="modalUseremail"></span></p>
        <p><strong>Nomor Telepon:</strong> <span id="modalUsernohp"></span></p>
        <p><strong>Level:</strong> <span id="modalUserRole"></span></p>
        <p><strong>Kelas:</strong> <span id="modalUserkelas"></span></p>
        <p><strong>NIS:</strong> <span id="modalUserNIS"></span></p>
        <p><strong>NISN:</strong> <span id="modalUserNISN"></span></p>
        <p><strong>NIK:</strong> <span id="modalUserNIK"></span></p>
        <p><strong>NUPTK:</strong> <span id="modalUserNUPTK"></span></p>
        
        <!-- Kamu bisa menambahkan informasi lain di sini -->
      </div>
      
    </div>
  </div>
</div>

<script>
function showUserDetail(name, email, nohp,  role, id_kelas, nis, nisn, nik, nuptk) {
    document.getElementById('modalUserName').textContent = name;
    document.getElementById('modalUseremail').textContent = email;
    document.getElementById('modalUsernohp').textContent = nohp;
    let roleName = '';
    switch (role) {
        case '1':
            roleName = 'Admin';
            break;
        case '2':
            roleName = 'Guru';
            break;
        case '3':
            roleName = 'Murid';
            break;
        default:
            roleName = 'Tidak Diketahui';
    }

    document.getElementById('modalUserRole').textContent = roleName;
    document.getElementById('modalUserkelas').textContent = id_kelas;
    document.getElementById('modalUserNIS').textContent = nis;
    document.getElementById('modalUserNISN').textContent = nisn;
    document.getElementById('modalUserNIK').textContent = nik;
    document.getElementById('modalUserNUPTK').textContent = nuptk;
    
}
</script>
