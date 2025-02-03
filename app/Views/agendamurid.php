<div class="main-content container-fluid">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-12 text-center">
                <h3>AGENDA</h3>
            </div>
            <div class="col-12 col-md-6">
                <nav aria-label="breadcrumb" class="breadcrumb-header text-right"></nav>
            </div>
        </div>
    </div>

    <!-- Basic card section start -->
    <section id="content-types">
        <div class="row">
            <div class="col-xl-12 col-md-12 col-sm-12">
                <?php
                foreach ($elly as $gou) {
                    if ($gou->isdelete == 0) {
                ?>
                    <div class="card mb-3">
                        <div class="card-content">
                            <div class="card-body">
                                <!-- Dibuat Pada (Tanggal dan Waktu) di bagian kanan atas -->
                                <div style="float: right; color: #6c757d;">
                                    <small><strong>Dibuat Pada:</strong> <?= date('d-m-Y H:i:s', strtotime($gou->created_at)) ?></small>
                                </div>
                                
                                <!-- Tampilkan Kepada: dengan Nama User -->
                                <h4 class="card-title" style="font-weight: bold; margin-bottom: 10px;">
    Kepada: <?= htmlspecialchars($gou->nama_user) ?> <?= htmlspecialchars($gou->nama_kelas) ?> <?= htmlspecialchars($gou->nama_jurusan) ?>
</h4>

<!-- Tambahkan Waktu: -->
<div style="font-size: 14px; color: #6c757d;">
    <strong>Waktu:</strong> <?= date('d-m-Y H:i:s', strtotime($gou->created_at)) ?>
</div>



<p class="card-text" style="font-size: 20px;">
    <?= nl2br(htmlspecialchars_decode($gou->isi_agenda)) ?>
</p>


                                <!-- Tampilkan Link "Open File" jika ada file PDF -->
                                <?php if (!empty($gou->file)) { ?>
                                    <a href="<?= base_url($gou->file) ?>" style="color: #007BFF; text-decoration: underline;" target="_blank">Open File</a>
                                <?php } ?>
                            </div>
                        </div>
                    </div>
                <?php
                    }
                }
                ?>
            </div>
        </div>
    </section>
</div>
