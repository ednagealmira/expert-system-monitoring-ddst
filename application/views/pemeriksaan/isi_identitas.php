                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
                    <p class="mr-1">Silahkan isi identitas anak yang akan diperiksa.</p>

                    <div class="row">
                        <div class="col-lg-7">
                            <form action="<?= base_url('pemeriksaan'); ?>" method="post">
                                <div class="form-group row">
                                    <label for="nama" class="col-sm-3 col-form-label">Nama</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="nama" name="nama" value="<?= set_value('nama'); ?>">
                                        <?= form_error('nama', '<small class="text-danger pl-3">', '</small>') ; ?>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="umur" class="col-sm-3 col-form-label">Umur</label>
                                    <div class="col-sm-3">
                                        <input type="text" class="form-control" id="umur" name="umur" value="<?= set_value('umur'); ?>">
                                        <?= form_error('umur', '<small class="text-danger pl-3">', '</small>') ; ?>
                                    </div>
                                    <p class="col-sm-3 mt-2 pl-0">Bulan</p>
                                </div>
                                <div class="form-group row">
                                    <label for="gender" class="col-sm-3 col-form-label">Jenis Kelamin</label>
                                    <div class="col-sm-9">
                                        <select class="form-control" name="gender" id="gender">
                                            <option value="" selected hidden>Pilih jenis kelamin</option>
                                            <option value="L">Laki-laki</option>
                                            <option value="P">Perempuan</option>
                                        </select>
                                        <?= form_error('gender', '<small class="text-danger pl-3">', '</small>') ; ?>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="nama_ortu" class="col-sm-3 col-form-label">Nama Orang Tua</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="nama_ortu" name="nama_ortu" value="<?= set_value('nama_ortu'); ?>">
                                        <?= form_error('nama_ortu', '<small class="text-danger pl-3">', '</small>') ; ?>
                                    </div>
                                </div>
                                <div class="form-group row justify-content-end">
                                    <div class="col-sm-9">
                                        <button type="submit" class="btn btn-primary btn-block">Lanjut</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->