<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Include Bootstrap CSS and JS for modal functionality -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>

    <style>
        .disabled-field {
            pointer-events: none;
            background-color: #e9ecef;
        }
    </style>
</head>
<body>
    <div class="main-content container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-12 col-md-6 order-md-2 order-first">
                    <nav aria-label="breadcrumb" class="breadcrumb-header"></nav>
                </div>
            </div>
        </div>

        <!-- Main Content Area -->
        <div id="dynamicContent">
            <!-- Initial Content will be here (Jurusan Table) -->
            <div class="row" id="table-bordered">
                <div class="col-12">
                    <div class="card">
                        
                        <div class="card-header d-flex justify-content-between align-items-center">
                            <h4 class="card-title">JURUSAN</h4>
                            <div class="d-flex align-items-center">
                                <div class="input-group me-2" style="max-width: 300px;">
                                    <input type="text" id="searchInput" class="form-control" placeholder="Cari">
                                    <button class="btn btn-warning" onclick="filterTable()">Cari</button>
                                </div>
                                <button class="btn btn-success" onclick="loadAddJurusanForm()">Tambah</button>
                            </div>
                        </div>
                        <div class="card-content">
                            <div class="table-responsive">
                                <table class="table table-bordered mb-0">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Jurusan</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $no = 1;
                                        foreach ($elly as $gou) {
                                            if ($gou->isdelete == 0) {
                                        ?>
                                        <tr>
                                            <td><?= $no++ ?></td>
                                            <td><?= $gou->nama_jurusan ?></td>
                                            <td>
                                                <div class="btn-group">
                                                    <button type="button" class="btn btn-primary btn-sm dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                                        Aksi
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li><a class="dropdown-item" onclick="loadEditJurusanForm(<?= $gou->id_jurusan ?>)">Edit</a></li>
                                                        <li><a class="dropdown-item" href="<?= base_url('home/hapusjurusan/' . $gou->id_jurusan) ?>">Hapus</a></li>
                                                        <?php if (isset($backup_jurusan[$gou->id_jurusan])): ?>
                                                        <li>
                                                            <a class="dropdown-item" onclick="loadUndoEditJurusanForm(<?= $gou->id_jurusan ?>)">
                                                                Undo Edit
                                                            </a>
                                                        </li>
                                                        <?php endif; ?>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                        <?php }} ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function filterTable() {
            const searchInput = document.getElementById("searchInput").value.toLowerCase();
            const table = document.querySelector("table tbody");
            const rows = table.getElementsByTagName("tr");

            for (let i = 0; i < rows.length; i++) {
                const kelasCell = rows[i].getElementsByTagName("td")[1];
                const kelasText = kelasCell ? kelasCell.textContent.toLowerCase() : "";

                if (kelasText.includes(searchInput)) {
                    rows[i].style.display = "";
                } else {
                    rows[i].style.display = "none";
                }
            }
        }

        // Load Add Jurusan Form
        function loadAddJurusanForm() {
            fetch('<?= base_url('home/tambah_jurusan') ?>')
                .then(response => response.text())
                .then(data => {
                    document.getElementById('dynamicContent').innerHTML = data;
                })
                .catch(error => {
                    console.error('Error:', error);
                    alert('Terjadi kesalahan saat memuat form tambah jurusan.');
                });
        }

        // Load Edit Jurusan Form
        function loadEditJurusanForm(id_jurusan) {
            fetch('<?= base_url('home/edit_jurusan') ?>/' + id_jurusan)
                .then(response => response.text())
                .then(data => {
                    document.getElementById('dynamicContent').innerHTML = data;
                })
                .catch(error => {
                    console.error('Error:', error);
                    alert('Terjadi kesalahan saat memuat form edit jurusan.');
                });
        }

        // Load Undo Edit Jurusan Form
        function loadUndoEditJurusanForm(id_jurusan) {
            fetch('<?= base_url('home/undo_edit_jurusan') ?>/' + id_jurusan)
                .then(response => response.text())
                .then(data => {
                    document.getElementById('dynamicContent').innerHTML = data;
                })
                .catch(error => {
                    console.error('Error:', error);
                    alert('Terjadi kesalahan saat memuat form undo edit jurusan.');
                });
        }
    </script>
</body>
</html>
