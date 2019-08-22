<!--==========================
    Footer
  ============================-->
  <footer id="footer">
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>Reveal</strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!--
          All the links in the footer should remain intact.
          You can delete the links only if you purchased the pro version.
          Licensing information: https://bootstrapmade.com/license/
          Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Reveal
        -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
  </footer><!-- #footer -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

  <!-- JavaScript Libraries -->
  <script src="<?php echo base_url('assets/user')?>/lib/jquery/jquery.min.js"></script>
  <script src="<?php echo base_url('assets/user')?>/lib/jquery/jquery-migrate.min.js"></script>
  <script src="<?php echo base_url('assets/user')?>/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="<?php echo base_url('assets/user')?>/lib/easing/easing.min.js"></script>
  <script src="<?php echo base_url('assets/user')?>/lib/superfish/hoverIntent.js"></script>
  <script src="<?php echo base_url('assets/user')?>/lib/superfish/superfish.min.js"></script>
  <script src="<?php echo base_url('assets/user')?>/lib/wow/wow.min.js"></script>
  <script src="<?php echo base_url('assets/user')?>/lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="<?php echo base_url('assets/user')?>/lib/magnific-popup/magnific-popup.min.js"></script>
  <script src="<?php echo base_url('assets/user')?>/lib/sticky/sticky.js"></script>

  <!-- Contact Form JavaScript File -->
  <script src="<?php echo base_url('assets/user')?>/contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="<?php echo base_url('assets/user')?>/js/main.js"></script>

  <script src="<?php echo base_url('assets/user');?>/lib/noty.min.js"></script>
<script type="text/javascript">
  <?php if($this->session->flashdata('notif')){?>

            new Noty({
                
                text: '<?php echo $this->session->flashdata('pesan'); ?>',
                timeout: 3000,
                theme: "metroui",
                type: "<?php echo $this->session->flashdata('type'); ?>",

                
            }).show();
        <?php } ?>
</script>
</body>
</html>
