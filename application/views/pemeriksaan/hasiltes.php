                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

                    <div class="row">
                        <div class="col-lg-7">
                            <div class="card mb-4 py-3 border-left-primary">
                                <div class="card-body">
                                    <table class="table table-sm table-borderless" width="100%" cellspacing="0">
                                        <tbody>
                                            <tr>
                                                <th scope="row" class="pr-3">Nama Anak</th>
                                                <td class="pl-3"><?= $hasil['nama']; ?></td>
                                            </tr>
                                            <tr>
                                                <th scope="row" class="pr-3">Umur Anak</th>
                                                <td class="pl-3"><?= $hasil['umur']; ?> Bulan</td>
                                            </tr>
                                            <tr>
                                                <th scope="row" class="pr-3">Jenis Kelamin</th>
                                                <td class="pl-3">
                                                    <?php if($hasil['gender'] == 'L') echo 'Laki-laki';
                                                    else echo 'Perempuan'; ?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row" class="pr-3">Nama Orang Tua</th>
                                                <td class="pl-3"><?= $hasil['nama_ortu']; ?></td>
                                            </tr>
                                            <tr>
                                                <th scope="row" class="pr-3">Hasil Tes DDST</th>
                                                <td class="pl-3"><?= $hasil['keputusan']; ?></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div class="form-group row justify-content pt-3">
                                        <div class="col-sm-4">
                                            <a href="<?= base_url('pemeriksaan'); ?>" class="btn btn-primary btn-block">Lakukan Tes Lagi</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->