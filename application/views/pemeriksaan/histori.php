                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

                    <?= $this->session->flashdata('message'); ?>
                    
                    <div class="card shadow mb-4">
                        <div class="card-header py-3 bg-gradient-primary">
                            <h6 class="m-0 font-weight-bold text-white text-center">Daftar Histori Hasil Tes Denver II</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-hover table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Nama</th>
                                            <th>Umur</th>
                                            <th>Jenis Kelamin</th>
                                            <th>Nama Orang Tua</th>
                                            <th>Hasil</th>
                                            <th>Tanggal Periksa</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php foreach ($listhasil as $h) : ?>
                                        <tr>
                                            <td><?= $h['nama']; ?></td>
                                            <td><?= $h['umur']; ?> Bulan</td>
                                            <td>
                                                <?php if($h['gender'] == 'L') echo 'Laki-laki';
                                                else echo 'Perempuan'; ?>
                                            </td>
                                            <td><?= $h['nama_ortu']; ?></td>
                                            <td><?= $h['keputusan']; ?></td>
                                            <td><?= date('d-m-Y', $h['tgl_tes']); ?></td>
                                            <td>
                                                <a href="<?= base_url('pemeriksaan/historidelete/') . $h['id']; ?>" class="btn btn-danger btn-circle btn-sm" onclick="return confirm('Anda yakin ingin menghapus data <?= $h['nama']; ?> ?')">
                                                    <i class="fas fa-fw fa-trash"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->