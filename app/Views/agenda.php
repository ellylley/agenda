

    <style>
        .disabled-field {
            pointer-events: none;
            background-color: #e9ecef;
        }

        .img-circle {
            border-radius: 50%;
            width: 150px;
            height: 150px;
            object-fit: cover;
        }

        
    </style>


<body data-user-level="<?= session()->get('level') ?>">
    <div class="main-content container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-12 col-md-6 order-md-2 order-first">
                    <nav aria-label="breadcrumb" class='breadcrumb-header'></nav>
                </div>
            </div>
        </div>
        <div id="dynamicContent">
        <div class="row" id="table-bordered">
            <div class="col-12">
                <div class="card">
                <div class="card-header d-flex justify-content-between align-items-center">
    <h4 class="card-title">AGENDA</h4>
    <div class="d-flex align-items-center">
        <div class="input-group">
            <input type="text" class="form-control" id="searchInput" placeholder="Cari">
            <button class="btn btn-warning" onclick="filterTable()">Cari</button>
           
        </div>
        <button class="btn btn-success ms-2" onclick="loadAddpengumumanForm()">Tambah</button>
    </div>
</div>

                    <div class="card-content">
                        <!-- table bordered -->
                        <div class="table-responsive">
                            <table class="table table-bordered mb-0">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Kepada</th>
                                        <th>Agenda</th>
                                        <th>Waktu</th>
                                        <th>Aksi</th>
                                        <th>Status</th> <!-- Tombol Share -->
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $no = 1;
                                    foreach ($elly as $gou) {
                                        if ($gou->isdelete == 0) {
                                            // Mencari nama kelas berdasarkan ID kelas dari pengumuman
                                            $nama_kelas = '';
                                            foreach ($kelas as $k) {
                                                if ($k->id_kelas == $gou->id_kelas) {
                                                    $nama_kelas = $k->nama_kelas;
                                                    break;
                                                }
                                            }
                                    ?>
                                            <tr>
                                                <td><?= $no++ ?></td>
                                                <td><?= $gou->nama_user . ' ' . $gou->nama_kelas . '  ' . $gou->nama_jurusan ?></td>
                                                <td><?= $gou->isi_agenda ?></td>
                                                <td><?= $gou->waktu ?></td>
                                                <td>
                                                    <div class="dropdown">
                                                        <button class="btn btn-primary btn-sm dropdown-toggle" type="button" id="actionMenu" data-bs-toggle="dropdown" aria-expanded="false">
                                                            Aksi
                                                        </button>
                                                        <ul class="dropdown-menu" aria-labelledby="actionMenu">
                                                            <li>
                                                            <li><a class="dropdown-item" onclick="loadEditpengumumanForm(<?= $gou->id_agenda ?>)">Edit</a></li>
                                                           
                                                            <li><a class="dropdown-item" href="<?= base_url('home/hapusagenda/' . $gou->id_agenda) ?>">Hapus</a></li>

                                                            <?php if (isset($backup_agenda[$gou->id_agenda])) : ?>
                                                                <li>
                                                                <li><a class="dropdown-item" onclick="loadUndoEditpengumumanForm(<?= $gou->id_agenda?>)">Undo Edit</a></li>
                                                                </li>
                                                            <?php endif; ?>
                                                        </ul>
                                                    </div>
                                                </td>

                                                <td>
    <input type="checkbox" class="form-check-input" <?= ($gou->status == 1) ? 'checked' : '' ?> data-id="<?= $gou->id_agenda ?>" onchange="toggleStatus(<?= $gou->id_agenda ?>, this)">
</td>
                                            </tr>
                                    <?php
                                        }
                                    }
                                    ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

</div>
<script>
    // Script asli yang sudah ada sebelumnya untuk show.bs.modal
    document.addEventListener('show.bs.modal', function (event) {
        var button = event.relatedTarget;
        var id = button.getAttribute('data-id');
        var isi = button.getAttribute('data-isi');
        var file = button.getAttribute('data-file');
        var modal = document.getElementById('shareModal');
        modal.querySelector('#shareId').value = id;
    });



function toggleStatus(id_agenda, checkbox) {
    const status = checkbox.checked ? 1 : 0;

    // Kirim status baru ke server
    fetch('<?= base_url('home/toggle_status_agenda') ?>/' + id_agenda + '/' + status)
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                console.log("Status berhasil diubah");
            } else {
                alert("Terjadi kesalahan saat mengubah status");
            }
        })
        .catch(error => {
            console.error('Error:', error);
            alert('Terjadi kesalahan saat mengubah status');
        });
}




document.addEventListener('DOMContentLoaded', function () {
        var searchButton = document.getElementById('searchButton'); // Ambil tombol Cari
        searchButton.addEventListener('click', filterTable); // Panggil filterTable saat tombol diklik
    });



    function filterTable() {
        const searchInput = document.getElementById("searchInput").value.toLowerCase();
        const table = document.querySelector("table tbody");
        const rows = table.getElementsByTagName("tr");

        for (let i = 0; i < rows.length; i++) {
            const tglCell = rows[i].getElementsByTagName("td")[1];
            const judulCell = rows[i].getElementsByTagName("td")[2];
            
            const tglText = tglCell ? tglCell.textContent.toLowerCase() : "";
            const judulText = judulCell ? judulCell.textContent.toLowerCase() : "";
            

            if (tglText.includes(searchInput) || judulText.includes(searchInput) ) {
                rows[i].style.display = "";
            } else {
                rows[i].style.display = "none";
            }
        }
    }

    function loadAddpengumumanForm() {
            fetch('<?= base_url('home/tambah_agenda') ?>')
                .then(response => response.text())
                .then(data => {
                    document.getElementById('dynamicContent').innerHTML = data;
                })
                .catch(error => {
                    console.error('Error:', error);
                    alert('Terjadi kesalahan saat memuat form tambah agenda.');
                });
        }

    function loadEditpengumumanForm(id_agenda) {
            fetch('<?= base_url('home/edit_agenda') ?>/' + id_agenda)
                .then(response => response.text())
                .then(data => {
                    document.getElementById('dynamicContent').innerHTML = data;
                })
                .catch(error => {
                    console.error('Error:', error);
                    alert('Terjadi kesalahan saat memuat form edit agenda.');
                });
        }

        // Load Undo Edit Jurusan Form
        function loadUndoEditpengumumanForm(id_agenda) {
            fetch('<?= base_url('home/undo_edit_agenda') ?>/' + id_agenda)
                .then(response => response.text())
                .then(data => {
                    document.getElementById('dynamicContent').innerHTML = data;
                })
                .catch(error => {
                    console.error('Error:', error);
                    alert('Terjadi kesalahan saat memuat form undo edit agenda.');
                });
        }

        function checkAgendaAndSendWhatsapp() {
    console.log('Memulai pengiriman WA pada:', new Date().toLocaleString()); // Cek kapan fungsi dipanggil

    fetch('<?= base_url('home/sendWhatsappReminder') ?>')
        .then(response => {
            console.log('Response dari server:', response);
            if (!response.ok) {
                throw new Error('Terjadi kesalahan pada server');
            }
            return response.json();
        })
        .then(data => {
            console.log('Data respons:', data);
            if (data.success) {
                console.log('Pesan WhatsApp berhasil dikirim:', data.data);
            } else {
                console.warn('Gagal mengirim pesan:', data.message);
            }
        })
        .catch(error => {
            console.error('Terjadi kesalahan:', error);
        });
}

// Panggil fungsi cek setiap 60 detik (1 menit)
setInterval(checkAgendaAndSendWhatsapp, 60000);





        
</script>


</body>

