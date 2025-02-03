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
                        <h4 class="card-title">Tambah</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            <form action="<?= base_url('home/aksi_tambah_user') ?>" method="POST" enctype="multipart/form-data">
                                <div class="row">
                    

                            <div class="col-md-6 col-12">
                                <label>Level</label>
                            <div class="form-group">
                                <select class="form-select" id="level" name="level" onchange="toggleKelas()">
                                <option value="">Pilih</option>
                                    <option value="1">Admin</option>
                                    <option value="2">Guru</option>
                                    <option value="3">Murid</option>
                                  
                                </select>
                            </div>

                            </div>

                            <div class="col-md-6 col-12">
                                <label>Nama User</label>
                            <div class="form-group">
                                <input type="text" id="first-name" class="form-control" name="nama" placeholder="Nama User">
                            </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <label>Email</label>
                            
                            <div class="form-group">
                                <input type="text" id="email" class="form-control" name="email" placeholder="Email">
                            </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <label>Nomor Telepon</label>

                            <div class="form-group">
                                <input type="text" id="nohp" class="form-control" name="nohp" placeholder="Nomor Telepon" value="62">
                            </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <label>Password</label>
                           
                            <div class="form-group">
                                <input type="password" id="password" class="form-control" name="password" placeholder="Password">
                            </div>
                            </div>
            
                            <div class="col-md-6 col-12">
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

                            <div class="col-md-6 col-12">
                                <label id="nisLabel" >NIS</label>
                         
                            <div class="form-group">
                                <input type="text" id="nis" class="form-control" name="nis" placeholder="NIS" >
                            </div>
                            </div>

                            <div class="col-md-6 col-12">
                                <label id="nisnLabel" >NISN</label>
                          
                            <div class="form-group">
                                <input type="text" id="nisn" class="form-control" name="nisn" placeholder="NISN" >
                            </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <label id="nikLabel" >NIK</label>
                         
                            <div class="form-group">
                                <input type="text" id="nik" class="form-control" name="nik" placeholder="NIK" >
                            </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <label id="nuptkLabel" >NUPTK</label>
                         
                            <div class="form-group">
                                <input type="text" id="nuptk" class="form-control" name="nuptk" placeholder="NUPTK" >
                            </div>
                            </div>
                                    <!-- Button Submit dan Reset -->
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
    <!-- // Basic multiple Column Form section end -->
</div>



