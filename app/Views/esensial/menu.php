<?php 
  $uri = service('uri');

  ?>
<style>
  #logo-image {
    width: 50px;
    height: auto;
  }

  .app-brand.demo {
    display: flex;
    justify-content: ;
    align-items: right;
    height: 100%; /* Ensure it takes the full height of the menu */
  }
  body {
      margin: 0;
      font-family: "Times New Roman", Times, serif;
      color: #000; /* Set text color to black */
    }

    .main {
      position: relative;
      width: 100%;
      height: auto;
      overflow: hidden;
    }

    .col-md-12 {
      position: relative;
      width: 200%;
      height: auto;
      display: flex;
      animation: slideImages 10s linear infinite; /* Change duration to 20s */
      transition: transform 0.01s ease; /* Smooth transition */
    }

    .col-md-12 img {
      width: 50%;
      max-height: 700px;
      margin-top: 50px;
      user-select: none; /* Prevent images from being selected */
      pointer-events: none; /* Disable pointer events on images */
    }

    
    
  
</style>

  </style>
<body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->
  
        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
        <div class="app-brand demo">
        <?php if (!empty($satu->logos)): ?>
<img src="<?= base_url('assets/img/custom/' . $satu->logos) ?>" alt="Login Icon"
class="img-fluid mb-3 logo-login" style="max-width: 150px;">
<?php endif; ?>

  </a>

  <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
    <i class="bx bx-chevron-left bx-sm align-middle"></i>
  </a>
</div>


<div class="menu-inner-shadow"></div>

<ul class="menu-inner py-1">
  <!-- Dashboard -->
  <li class="menu-header">MAIN MENU</li>
  <li class="menu-item <?php if($uri->getSegment(2) == "dashboard"){echo "active";}?> ">
    <a href="<?= base_url("Home/dashboard") ?>" class="menu-link">
      <i class="menu-icon tf-icons bx bx-home-circle"></i>
      <div data-i18n="Analytics">Dashboard</div>
    </a>
</li>
<li class="menu-item <?php if($uri->getSegment(2) == "aktivitas"){echo "active";}?>">
  <a href="<?= base_url("Home/aktivitas")?>" class="menu-link">
      <i class="menu-icon tf-icons bx bx-notepad"></i>
      <div data-i18n="Layouts">Aktivitas</div>
    </a>
    </li>
<li class="menu-item <?php if($uri->getSegment(2) == "kasir"){echo "active";}?>">
  <a href="<?= base_url("Home/kasir")?>" class="menu-link">
      <i class="menu-icon tf-icons bx bx-notepad"></i>
      <div data-i18n="Layouts">Kasir</div>
    </a>
    </li>
<li class="menu-item <?php if($uri->getSegment(2) == "transaksi"){echo "active";}?><?php if($uri->getSegment(2) == "tambahBill"){echo "active";}?><?php if($uri->getSegment(2) == "Detail"){echo "active";}?>">
  <a href="<?= base_url("Home/transaksi")?>" class="menu-link">
      <i class="menu-icon tf-icons bx bx-notepad"></i>
      <div data-i18n="Layouts">Transaksi</div>
    </a>
    </li>
  <!-- Layouts -->
  <li class="menu-item">
  <li class="menu-header">DATA MANAGER MENU</li>
<li class="menu-item <?php if($uri->getSegment(2) == "permainan"){echo "active";}?> <?php if($uri->getSegment(2) == "AddPer"){echo "active";}?><?php if($uri->getSegment(2) == "UpPer"){echo "active";}?>">
  <a href="<?= base_url("Home/permainan")?>" class="menu-link">
      <i class="menu-icon tf-icons bx bx-notepad"></i>
      <div data-i18n="Layouts">permainan</div>
    </a>
    </li>
    <li class="menu-item <?php if($uri->getSegment(2) == "Pelanggan"){echo "active";}?> <?php if($uri->getSegment(2) == "AddPe"){echo "active";}?><?php if($uri->getSegment(2) == "UpPe"){echo "active";}?>">
  <a href="<?= base_url("Home/Pelanggan")?>" class="menu-link">
      <i class="menu-icon tf-icons bx bx-notepad"></i>
      <div data-i18n="Layouts">Pelanggan</div>
    </a>
    </li>
    <li class="menu-item <?php if($uri->getSegment(2) == "pajak"){echo "active";}?> ">
  <a href="<?= base_url("home/pajak/1")?>" class="menu-link">
      <i class="menu-icon tf-icons bx bx-notepad
"></i>

      <div data-i18n="Layouts">pajak</div>
    </a>
    </li>
  

    <?php
 $userLevel = session()->get('Level');
 $allowedLevels = ['admin'];

 if (in_array($userLevel, $allowedLevels)) {
?> 
<li class="menu-header">ADMIN MENU</li>

    <li class="menu-item <?php if($uri->getSegment(2) == "User"){echo "active";}?> <?php if($uri->getSegment(2) == "Aduser"){echo "active";}?> <?php if($uri->getSegment(2) == "UpUser"){echo "active";}?>">
  <a href="<?= base_url("Home/User")?>" class="menu-link">
      <i class="menu-icon tf-icons bx bx-notepad"></i>
      <div data-i18n="Layouts">User</div>
    </a>
    </li>
    <li class="menu-item <?php if($uri->getSegment(2) == "setting"){echo "active";}?> ">
  <a href="<?= base_url("home/setting/1")?>" class="menu-link">
      <i class="menu-icon tf-icons bx bx-cog
"></i>

      <div data-i18n="Layouts">Setting</div>
    </a>
    </li>
  
     <li class="menu-item <?php if($uri->getSegment(2) == "activity_log"){echo "active";}?>">
  <a href="<?= base_url("Home/activity_log")?>" class="menu-link">
      <i class="menu-icon tf-icons bx bx-notepad"></i>
      <div data-i18n="Layouts">Activity Log</div>
    </a>
    </li>
    <?php } ?>
    <li class="menu-header">LOG OUT</li>
    <li class="menu-item">
  <a href="<?= base_url("home/logout")?>" class="menu-link">
      <i class="menu-icon tf-icons bx bx-log-in-circle"></i>
      <div data-i18n="Layouts">Log out</div>
    </a>
    </li>
</ul>
</aside>
        </aside>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Navbar -->

          <nav
            class="layout-navbar container-xxxxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
            id="layout-navbar"
          >
            <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
              <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                <i class="bx bx-menu bx-sm"></i>
              </a>
            </div>

            <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
              <!-- Search -->
            


               
              </ul>
            </div>
          </nav>

          <!-- / Navbar -->