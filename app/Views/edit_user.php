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
                        <h4 class="card-title">Edit</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            <form action="<?= base_url('home/aksi_edit_user') ?>" method="POST" enctype="multipart/form-data">
                                <div class="row">
                    

                            <div class="col-md-12 col-12">
                                <label>Level</label>
                            <div class="form-group">
                            <select class="form-select" id="editlevel" name="level" onchange="toggleEditKelas()">

    <option value="">Pilih</option>
    <option value="1" <?= isset($elly->level) && $elly->level == 1 ? 'selected' : '' ?>>Admin</option>
    <option value="2" <?= isset($elly->level) && $elly->level == 2 ? 'selected' : '' ?>>Guru</option>
    <option value="3" <?= isset($elly->level) && $elly->level == 3 ? 'selected' : '' ?>>Murid</option>
</select>

                            </div>

                            </div>

                            <div class="col-md-6 col-12">
                                <label>Nama User</label>
                            <div class="form-group">
                                <input type="text" id="editNama" class="form-control" name="nama" placeholder="Nama User" value="<?= $elly->nama_user ?? '' ?>">
                            </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <label>Email</label>
                            
                            <div class="form-group">
                                <input type="text" id="editemail" class="form-control" name="email" placeholder="Email" value="<?= $elly->email ?? '' ?>">
                            </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <label>Nomor Telepon</label>

                            <div class="form-group">
                                <input type="text" id="editnohp" class="form-control" name="nohp" placeholder="Nomor Telepon" value="<?= $elly->nohp ?? '' ?>">
                            </div>
                            </div>
                        
                            
                            <div class="col-md-6 col-12">
                                <label id="editKelasLabel" >Kelas</label>
                        
                            <div class="form-group">
                                <select class="form-select" id="editKelas" name="kelas" >
                                <option value="">Pilih</option>
    <?php foreach($kelas as $gou){ ?>
        <option value="<?=$gou->id_kelas?>" <?= (isset($elly->id_kelas) && $elly->id_kelas == $gou->id_kelas) ? 'selected' : '' ?>>
    <?=$gou->nama_kelas?> - <?=$gou->nama_jurusan?>
</option>

    <?php } ?>
                                </select>
                            </div>
                            </div>

                            <div class="col-md-6 col-12">
                                <label id="editNisLabel" >NIS</label>
                         
                            <div class="form-group">
                                <input type="text" id="editNis" class="form-control" name="nis" placeholder="NIS"  value="<?= $elly->nis ?? '' ?>">
                            </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <label id="editNisnLabel" >NISN</label>
                          
                            <div class="form-group">
                                <input type="text" id="editNisn" class="form-control" name="nisn" placeholder="NISN" value="<?= $elly->nisn ?? '' ?>">
                            </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <label id="editNikLabel" >NIK</label>
                         
                            <div class="form-group">
                                <input type="text" id="editNik" class="form-control" name="nik" placeholder="NIK"  value="<?= $elly->nik ?? '' ?>">
                            </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <label id="editNuptkLabel" >NUPTK</label>
                         
                            <div class="form-group">
                                <input type="text" id="editNuptk" class="form-control" name="nuptk" placeholder="NUPTK"  value="<?= $elly->nuptk ?? '' ?>">
                            </div>
                            </div>
                                    <!-- Button Submit dan Reset -->
                                    <div class="col-12 d-flex justify-content-end">
                                        <button type="submit" class="btn btn-primary me-1 mb-1">Submit</button>
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

