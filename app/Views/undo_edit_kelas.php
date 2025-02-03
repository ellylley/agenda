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

                    <a href="<?= base_url('home/kelas') ?>" class="d-flex justify-content-end">
    <button class="btn btn-danger">Back</button>
</a>
                        <h4 class="card-title">Undo Edit</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            <form action="<?= base_url('home/aksi_unedit_kelas') ?>" method="POST" enctype="multipart/form-data">
                                <div class="row">
                                    <!-- Nama Kelas -->
                                    <div class="col-md-12 col-12">
                                        <label for="kelas">Nama Kelas</label>
                                        <div class="form-group">
                                            <input type="text" id="kelas" class="form-control disabled-field" name="kelas" placeholder="Nama Kelas" value="<?= isset($backup_kelas[$elly->id_kelas]) ? $backup_kelas[$elly->id_kelas]->nama_kelas : $elly->nama_kelas ?? '' ?>">
                                        </div>
                                    </div>

                                    <!-- Jurusan -->
<div class="col-md-12 col-12">
    <label for="jurusan">Jurusan</label>
    <div class="form-group">
        <select id="jurusan" class="form-control disabled-field" name="jurusan" required>
            <option value="">Pilih Jurusan</option>
            <?php foreach ($jurusan as $jur) { ?>
                <option value="<?= $jur->id_jurusan ?>" 
                    <?= (isset($backup_kelas[$elly->id_kelas]) && $backup_kelas[$elly->id_kelas]->id_jurusan == $jur->id_jurusan) ? 'selected' : 
                        (isset($elly->id_jurusan) && $elly->id_jurusan == $jur->id_jurusan ? 'selected' : '') ?>>
                    <?= $jur->nama_jurusan ?>
                </option>
            <?php } ?>
        </select>
    </div>
</div>


                                    <!-- Wali Kelas -->
<div class="col-md-12 col-12">
    <label for="wali">Wali Kelas</label>
    <div class="form-group">
        <select id="wali" class="form-control disabled-field" name="wali" required>
            <option value="">Pilih Wali Kelas</option>
            <?php foreach ($guru as $wali) { ?>
                <option value="<?= $wali->id_user ?>" 
                    <?= (isset($backup_kelas[$elly->id_kelas]) && $backup_kelas[$elly->id_kelas]->id_user == $wali->id_user) ? 'selected' : 
                        (isset($elly->id_user) && $elly->id_user == $wali->id_user ? 'selected' : '') ?>>
                    <?= $wali->nama_user ?>
                </option>
            <?php } ?>
        </select>
    </div>
</div>


                                    <!-- Button Submit dan Reset -->
                                    <div class="col-12 d-flex justify-content-end">
                                        <button type="submit" class="btn btn-primary me-1 mb-1">Undo</button>
                                        <input type="hidden" name="id" value="<?= $elly->id_kelas ?? '' ?>">
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

