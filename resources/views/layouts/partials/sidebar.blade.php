<div class="sidebar" data-background-color="dark">
    <div class="sidebar-logo">
      <!-- Logo Header -->
      <div class="logo-header" data-background-color="dark">
        <a href="index.html" class="logo">
          <img src="/assets/img/kaiadmin/logo_light.svg" alt="navbar brand" class="navbar-brand" height="20"/>
        </a>
        <div class="nav-toggle">
          <button class="btn btn-toggle toggle-sidebar">
            <i class="gg-menu-right"></i>
          </button>
          <button class="btn btn-toggle sidenav-toggler">
            <i class="gg-menu-left"></i>
          </button>
        </div>
        <button class="topbar-toggler more">
          <i class="gg-more-vertical-alt"></i>
        </button>
      </div>
      <!-- End Logo Header -->
    </div>
    <div class="sidebar-wrapper scrollbar scrollbar-inner">
      <div class="sidebar-content">
        <ul class="nav nav-secondary">
          <li class="nav-item active">
            <a href="{{route ('dashboard')}}" class="collapsed" aria-expanded="false">
              <i class="fas fa-home"></i>
              <p>Dashboard</p>
                    </a>
                </li>
                <li class="nav-item">
                  <a data-bs-toggle="collapse" href="#surat">
                      <i class="fas fa-envelope"></i>
                      <p>Surat</p>
                      <span class="caret"></span>
                  </a>
                  <div class="collapse" id="surat">
                      <ul class="nav nav-collapse">
                          <li>
                              <a href="{{route('master.surat.masuk.index') }}">
                                  <span class="sub-item">Surat Masuk</span>
                              </a>
                          </li>
                          <li>
                            <a href="{{route('master.surat.keluar.index') }}">
                                <span class="sub-item">Surat Keluar</span>
                            </a>
                        </li>
                          <li>
                              <a href="{{route('master.memo.masuk.index') }}">
                                  <span class="sub-item">Memo Masuk</span>
                              </a>
                          </li>
                          <li>
                            <a href="{{route('master.memo.keluar.index') }}">
                                <span class="sub-item">Memo Keluar</span>
                            </a>
                        </li>
                      </ul>
                  </div>
              </li>
              <li class="nav-item">
                <a data-bs-toggle="collapse" href="#tambah">
                    <i class="nav-icon fas fa-edit"></i>
                    <p>Tambah</p>
                    <span class="caret"></span>
                </a>
                <div class="collapse" id="tambah">
                    <ul class="nav nav-collapse">
                        <li>
                            <a href="{{route('master.surat.create') }}">
                                <span class="sub-item">Surat</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="sub-item">Memo</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </li>
                <li class="nav-item">
                    <a data-bs-toggle="collapse" href="#userMenu">
                        <i class="fas fa-users"></i>
                        <p>User</p>
                        <span class="caret"></span>
                    </a>
                    <div class="collapse" id="userMenu">
                        <ul class="nav nav-collapse">
                            <li>
                                <a href="#">
                                    <span class="sub-item">Data User</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="sub-item">Tambah User</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-section">
                    <h4 class="text-section">Master Data</h4>
                </li>
                <li class="nav-item">
                    <a href="#">
                        <i class="fas fa-database"></i>
                        <p>Data Group</p>
                    </a>
                </li>
                <li class="nav-section">
                    <h4 class="text-section">Setting</h4>
                </li>
                <li class="nav-item">
                    <a href="#">
                        <i class="fas fa-user"></i>
                        <p>Akun</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
