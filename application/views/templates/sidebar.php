        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center">
                <div class="sidebar-brand-icon">
                    <i class="fas fa-fw fa-baby"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Denver II Test</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider mb-0">

            <!-- Nav Item -->
            <li class="nav-item">
                <a class="nav-link" href="<?= base_url('home') ?>">
                    <i class="fas fa-fw fa-home"></i>
                    <span>Home</span>
                </a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Pemeriksaan
            </div>

            <!-- Nav Item -->
            <li class="nav-item">
                <a class="nav-link pb-0" href="<?= base_url('pemeriksaan'); ?>">
                    <i class="fas fa-fw fa-cubes"></i>
                    <span>Mulai Tes Denver II</span>
                </a>
                <a class="nav-link" href="<?= base_url('pemeriksaan/histori'); ?>">
                    <i class="fas fa-fw fa-cubes"></i>
                    <span>Histori Tes</span>
                </a>
            </li>
            
            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">
            
            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->