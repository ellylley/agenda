<div class="main-content container-fluid">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class='breadcrumb-header'>
                </nav>
            </div>
        </div>
    </div>
    <!-- // Basic multiple Column Form section start -->
    <section id="multiple-column-form">
        <div class="row match-height">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">

                    <a href="<?= base_url('home/user') ?>" class="d-flex justify-content-end">
    <button class="btn btn-danger">Back</button>
</a>
                        <h4 class="card-title">Undo Edit</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            <form action="<?= base_url('home/aksi_unedit_user') ?>" method="POST" enctype="multipart/form-data">
                                <div class="row">
                    

                                <div class="col-md-12 col-12">
    <label>Level</label>
    <div class="form-group">
        <select class="form-select disabled-field" id="undolevel" name="level" onchange="toggleUndoKelas()">
            <option value="">Pilih</option>
            <option value="1" <?= isset($backup_user[$elly->id_user]) && $backup_user[$elly->id_user]->level == 1 || (isset($elly->level) && $elly->level == 1) ? 'selected' : '' ?>>Admin</option>
            <option value="2" <?= isset($backup_user[$elly->id_user]) && $backup_user[$elly->id_user]->level == 2 || (isset($elly->level) && $elly->level == 2) ? 'selected' : '' ?>>Guru</option>
            <option value="3" <?= isset($backup_user[$elly->id_user]) && $backup_user[$elly->id_user]->level == 3 || (isset($elly->level) && $elly->level == 3) ? 'selected' : '' ?>>Murid</option>
           
        </select>
    </div>
</div>

                            <div class="col-md-6 col-12">
                                <label>Nama User</label>
                            <div class="form-group">
                                <input type="text" id="undoNama" class="form-control disabled-field" name="nama" placeholder="Nama User" value="<?= isset($backup_user[$elly->id_user]) ? $backup_user[$elly->id_user]->nama_user : $elly->nama_user ?? '' ?>">
                            </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <label>Email</label>
                            
                            <div class="form-group">
                                <input type="text" id="undoemail" class="form-control disabled-field" name="email" placeholder="Email" value="<?= isset($backup_user[$elly->id_user]) ? $backup_user[$elly->id_user]->email : $elly->email ?? '' ?>">
                            </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <label>Nomor Telepon</label>

                            <div class="form-group">
                                <input type="text" id="undonohp" class="form-control disabled-field" name="nohp" placeholder="Nomor Telepon" value="<?= isset($backup_user[$elly->id_user]) ? $backup_user[$elly->id_user]->nohp : $elly->nohp ?? '' ?>">
                            </div>
                            </div>
                            
                            <div class="col-md-6 col-12">
                                <label id="undoKelasLabel" >Kelas</label>
                        
                            <div class="form-group">
                            <select id="undoKelas" class="form-control disabled-field" name="kelas">
                            <option value="">Pilih</option>
<?php foreach ($kelas as $gou) { ?>
    <option value="<?= $gou->id_kelas ?>" 
    <?= isset($backup_user[$elly->id_user]) 
        ? ($backup_user[$elly->id_user]->id_kelas == $gou->id_kelas ? 'selected' : '')
        : (isset($elly->id_kelas) && $elly->id_kelas == $gou->id_kelas ? 'selected' : '') ?>>
    <?= $gou->nama_kelas ?> - <?= $gou->nama_jurusan ?>
</option>

<?php } ?>

        </select>
                            </div>
                            </div>

                            <div class="col-md-6 col-12">
                                <label id="undoNisLabel" >NIS</label>
                         
                            <div class="form-group">
                                <input type="text" id="undoNis" class="form-control disabled-field" name="nis" placeholder="NIS"  value="<?= isset($backup_user[$elly->id_user]) ? $backup_user[$elly->id_user]->nis : $elly->nis ?? '' ?>">
                            </div>
                            </div>

                            <div class="col-md-6 col-12">
                                <label id="undoNisnLabel" >NISN</label>
                          
                            <div class="form-group">
                                <input type="text" id="undoNisn" class="form-control disabled-field" name="nisn" placeholder="NISN"  value="<?= isset($backup_user[$elly->id_user]) ? $backup_user[$elly->id_user]->nisn : $elly->nisn ?? '' ?>">
                            </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <label id="undoNikLabel">NIK</label>
                         
                            <div class="form-group">
                                <input type="text" id="undoNik" class="form-control disabled-field" name="nik" placeholder="NIK" s value="<?= isset($backup_user[$elly->id_user]) ? $backup_user[$elly->id_user]->nik : $elly->nik ?? '' ?>">
                            </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <label id="undoNuptkLabel" >NUPTK</label>
                         
                            <div class="form-group">
                                <input type="text" id="undoNuptk" class="form-control disabled-field" name="nuptk" placeholder="NUPTK"  value="<?= isset($backup_user[$elly->id_user]) ? $backup_user[$elly->id_user]->nuptk : $elly->nuptk ?? '' ?>">
                            </div>
                            </div>
                                    <!-- Button Submit dan Reset -->
                                    <div class="col-12 d-flex justify-content-end">
                                        <button type="submit" class="btn btn-primary me-1 mb-1">Undo</button>
                                        <input type="hidden" name="id" value="<?= $elly->id_user ?? '' ?>">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- // Basic multiple Column Form section end -->
</div>


<style>
    .disabled-field {
        pointer-events: none;
        background-color: #e9ecef; /* Optional: change the background color to indicate it's disabled */
    }
</style>



