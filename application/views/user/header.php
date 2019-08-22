<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Reveal Bootstrap Template</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="<?php echo base_url('assets/user')?>/img/favicon.png" rel="icon">
  <link href="<?php echo base_url('assets/user')?>/img/apple-touch-icon.png" rel="apple-touch-icon">


  <link href="<?php echo base_url('assets/user');?>/lib/noty.css" rel="stylesheet">
  <link href="<?php echo base_url('assets/user');?>/lib/themes/metroui.css" rel="stylesheet">


  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="<?php echo base_url('assets/user')?>/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="<?php echo base_url('assets/user')?>/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="<?php echo base_url('assets/user')?>/lib/animate/animate.min.css" rel="stylesheet">
  <link href="<?php echo base_url('assets/user')?>/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="<?php echo base_url('assets/user')?>/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="<?php echo base_url('assets/user')?>/lib/magnific-popup/magnific-popup.css" rel="stylesheet">
  <link href="<?php echo base_url('assets/user')?>/lib/ionicons/css/ionicons.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="<?php echo base_url('assets/user')?>/css/style.css" rel="stylesheet">

  <!-- =======================================================
    Theme Name: Reveal
    Theme URL: https://bootstrapmade.com/reveal-bootstrap-corporate-template/
    Author: BootstrapMade.com
    License: https://bootstrapmade.com/license/
  ======================================================= -->
</head>

<body id="body">

  <!--==========================
    Top Bar
  ============================-->
  <!-- <section id="topbar" class="d-none d-lg-block">
    <div class="container clearfix">
      <div class="contact-info float-left">
        <i class="fa fa-envelope-o"></i> <a href="mailto:contact@example.com">contact@example.com</a>
        <i class="fa fa-phone"></i> +1 5589 55488 55
      </div>
      <div class="social-links float-right">
        <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
        <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
        <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
        <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
        <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
      </div>
    </div>
  </section> -->

  <!--==========================
    Header
  ============================-->
  <header id="header">
    <div class="container">

      <div id="logo" class="pull-left">
        <h1><a href="#body" class="scrollto">Bamba<span>ng</span></a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="#body"><img src="img/logo.png" alt="" title="" /></a>-->
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li><a href="<?php echo base_url('Index/index') ?>">Beranda</a></li>
          <li><a href="<?php echo base_url('Index/tentang') ?>">Tentang</a></li>
          <li><a href="<?php echo base_url('Index/bantuan') ?>">Bantuan</a></li>
          <li><a href="<?php echo base_url('Index/tes')?>" >Mulai Tes</a></li>
          <?php if(empty($this->session->userdata('id_user'))) { ?>
          <li><a href="<?php echo base_url('Index/login')?>">Login</a></li>
          <?php }
       else{?>
          <li class="menu-has-children"><a href=""><?php echo $this->session->userdata('nama_lengkap'); ?></a>
            <ul>
              <li><a href="<?php echo base_url('Index/profil')?>">Profil</a></li>
              <li><a href="<?php echo base_url('Index/riwayat')?>">Riwayat</a></li>
              <li><a href="<?php echo base_url('Index/pengaturan') ?>">Pengaturan</a></li>
              <li><a href="<?php echo base_url('Login/keluar') ?>">Keluar</a></li>
            </ul>
          </li>
      <?php } ?>
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

  <!--toaster-->
