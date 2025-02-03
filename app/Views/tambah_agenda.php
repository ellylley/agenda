
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
                        <h4 class="card-title">Tambah</h4>
                    </div>

                    <div class="card-content">
                        <div class="card-body">
                            <form action="<?= base_url('home/aksi_tambah_agenda') ?>" method="POST" enctype="multipart/form-data">
                                <div class="row">

                                <div class="col-md-12 col-12">
                                        <label for="murid">Murid</label>
                                        <div class="form-group">
                                            <select id="murid" class="form-control" name="murid" required>
                                                <option value="">Pilih Murid</option>
                                                <?php foreach($murid as $jur){ ?>
                                                    <option value="<?=$jur->id_user?>"><?=$jur->nama_user. ' - ' . $jur->nis?></option>
                                                <?php } ?>
                                            </select>
                                        </div>
                                    </div>


                            <div class="col-md-12 col-12">
                                <label id="kelasLabel" >Kelas</label>
                            <div class="form-group">
                                <select class="form-select" id="kelas" name="kelas" >
                                <option value="">Pilih</option>
                                    <?php foreach($kelas as $gou){ ?>
                                        <option value="<?=$gou->id_kelas?>"><?=$gou->nama_kelas . ' - ' . $gou->nama_jurusan?></option>
                                    <?php } ?>
                                </select>
                            </div>
                            </div>

                                <div class="col-md-12 col-12">
                                <div class="form-group">
                                    <label>Isi</label>
                       
                                    <textarea class="form-control" name="isi"  rows="20"  placeholder="Isi"></textarea>
                                </div>
                                </div>

                                <div class="col-md-12 col-12">
    <div class="form-group">
        <label for="waktu">Waktu</label>
        <input type="datetime-local" class="form-control" name="waktu" id="waktu" placeholder="Pilih Waktu">
    </div>
</div>

                    
                                    <div class="col-12 d-flex justify-content-end">
                                        <button type="submit" class="btn btn-primary me-1 mb-1">Submit</button>
                                        <button type="reset" class="btn btn-light-secondary me-1 mb-1">Reset</button>
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
