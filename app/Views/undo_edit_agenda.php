
<div class="main-content container-fluid">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class='breadcrumb-header'>
                    <!-- Breadcrumb content here -->
                </nav>
            </div>
        </div>
    </div>

    <!-- Basic multiple Column Form section start -->
    <section id="multiple-column-form">
        <div class="row match-height">
            <div class="col-12">
                <div class="card">
                    
                    <div class="card-header">
                    <a href="<?= base_url('home/agenda') ?>" class="d-flex justify-content-end">
    <button class="btn btn-danger">Back</button>
</a>
                        <h4 class="card-title">Undo Edit</h4>
                    </div>

                    <div class="card-content">
                        <div class="card-body">
                            <form action="<?= base_url('home/aksi_unedit_agenda') ?>" method="POST" enctype="multipart/form-data">
                                <div class="row">
                                   

                                <div class="col-md-12 col-12">
    <label for="wali">Murid</label>
    <div class="form-group">
        <select id="wali" class="form-control disabled-field" name="wali" required>
            <option value="">Pilih</option>
            <?php foreach ($murid as $wali) { ?>
                <option value="<?= $wali->id_user ?>" 
                    <?= (isset($backup_agenda[$elly->id_kelas]) && $backup_agenda[$elly->id_kelas]->id_user == $wali->id_user) ? 'selected' : 
                        (isset($elly->id_user) && $elly->id_user == $wali->id_user ? 'selected' : '') ?>>
                    <?= $wali->nama_user ?> - <?= $wali->nis ?>
                </option>
            <?php } ?>
        </select>
    </div>
</div>


                                <div class="col-md-12 col-12">
                                <label id="undoKelasLabel" >Kelas</label>
                        
                            <div class="form-group">
                            <select id="undoKelas" class="form-control disabled-field" name="kelas">
                            <option value="">Pilih</option>
<?php foreach ($kelas as $gou) { ?>
    <option value="<?= $gou->id_kelas ?>" 
    <?= isset($backup_agenda[$elly->id_user]) 
        ? ($backup_agenda[$elly->id_user]->id_kelas == $gou->id_kelas ? 'selected' : '')
        : (isset($elly->id_kelas) && $elly->id_kelas == $gou->id_kelas ? 'selected' : '') ?>>
    <?= $gou->nama_kelas ?> - <?= $gou->nama_jurusan ?>
</option>

<?php } ?>

        </select>
                            </div>
                            </div>
                               
                                <div class="col-md-12 col-12">
                                <div class="form-group">
                                    <label>Isi</label>
                       
                                    <textarea class="form-control disabled-field" name="isi" rows="20" placeholder="Isi"><?= isset($backup_agenda[$elly->id__agenda]) ? $backup_agenda[$elly->id__agenda]->isi_agenda : $elly->isi_agenda ?? '' ?></textarea>

                                </div>
                                </div>

                                <div class="col-md-12 col-12">
    <div class="form-group">
        <label for="waktu">Waktu</label>
        <input type="datetime-local" class="form-control disabled-field" name="waktu" id="waktu" placeholder="Pilih Waktu" value="<?= isset($backup_agenda[$elly->id__agenda]) ? $backup__agenda[$elly->id__agenda]->waktu : $elly->waktu ?? '' ?>">
    </div>
    </div>

                                    <div class="col-12 d-flex justify-content-end">
                                        <button type="submit" class="btn btn-primary me-1 mb-1">Undo</button>
                                        <input type="hidden" name="id" value="<?= $elly->id_agenda ?? '' ?>">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Basic multiple Column Form section end -->
</div>

<style>
    .disabled-field {
        pointer-events: none;
        background-color: #e9ecef; /* Optional: change the background color to indicate it's disabled */
    }
</style>