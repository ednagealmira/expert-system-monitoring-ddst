                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

                    <div class="row">
                        <div class="col-lg-11">
                            <form action="<?= base_url('pemeriksaan/tes_ddst'); ?>" method="post">
                                <?php foreach($listsektor as $ls) : ?>
                                <div class="col-xl-9 col-md-6 mb-4">
                                    <div class="card border-left-primary shadow h-100 py-2">
                                        <div class="card-body">
                                            <div class="text-m font-weight-bold text-primary text-uppercase mb-1">Tes Sektor <?= $ls['sektor']; ?></div>
                                            <?php $i = 1;
                                            foreach($listsoal as $s) :
                                            if($s['id_sektor'] == $ls['id']) :?>
                                            <div class="mt-3 mb-0"><?= $i.'. '.$s['desc_soal']; ?></div>
                                            <?php if($s['petunjuk'] != 'None') : ?>
                                            <div class="mb-0 ml-3">Petunjuk: <?= $s['petunjuk']; ?></div>
                                            <?php endif; ?>
                                            <div class="ml-4">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="skor<?= $s['id']; ?>" id="P" value="P">
                                                    <label class="form-check-label" for="P">Pass</label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="skor<?= $s['id']; ?>" id="F" value="F">
                                                    <label class="form-check-label" for="F">Fail</label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="skor<?= $s['id']; ?>" id="NO" value="NO">
                                                    <label class="form-check-label" for="NO">No Opportunity</label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="skor<?= $s['id']; ?>" id="R" value="R">
                                                    <label class="form-check-label" for="R">Refusal</label>
                                                </div>
                                            </div>
                                            <?php $i++;
                                            endif;
                                            endforeach; ?> 
                                        </div>
                                    </div>
                                </div>
                                <?php endforeach; ?>

                                <div class="form-group row justify-content">
                                    <div class="col-sm-9">
                                        <button type="submit" class="btn btn-primary btn-block" name="submit-test">Lihat Hasil Tes</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->