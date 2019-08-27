<?php $this->load->view ("user/header") ?>
<!--==========================
    Intro Section
  ============================-->
  <section id="intro">

    <div class="intro-content">
      <h2>Cari Lebih Tahu Tentang Dirimu<br>Sekarang Jugaa !</h2>
    </div>
       
    <div id="intro-carousel" class="owl-carousel" >
      <div class="item" style="background-image: url('<?php echo base_url('assets/user')?>/img/intro-carousel/1.jpg');"></div>
      <div class="item" style="background-image: url('<?php echo base_url('assets/user')?>/img/intro-carousel/2.jpg');"></div>
      <div class="item" style="background-image: url('<?php echo base_url('assets/user')?>/img/intro-carousel/3.jpg');"></div>
      <div class="item" style="background-image: url('<?php echo base_url('assets/user')?>/img/intro-carousel/4.jpg');"></div>
      <div class="item" style="background-image: url('<?php echo base_url('assets/user')?>/img/intro-carousel/5.jpg');"></div>
    </div>  

  </section>
  <div class="container" style="margin-top: 20px;">
        <div class="row">
          <div class="col-md d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services text-center d-block">
              <div class="icon justify-content-center align-items-center d-flex"><span class="flaticon-gliding"></span></div>
              <div class="media-body">
                <i class="fa fa-check fa-3x"></i>
                <h3 class="heading mb-3">Cepat</h3>
                <p>Dengan mengerjakan selama 15 menit anda mendapatkan hasil langsung</p>
              </div>
            </div>      
          </div>
          <div class="col-md d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services text-center d-block">
              <div class="icon justify-content-center align-items-center d-flex"><span class="flaticon-world"></span></div>
              <div class="media-body">
                <h3 class="heading mb-3">Mudah</h3>
                <p>satu soal terdapat 2 opsi pertanyaan dan dapat dikerjakan dimanapun dan kapanmu kamu mau</p>
              </div>
            </div>      
          </div>
          <div class="col-md d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services text-center d-block">
              <div class="icon justify-content-center align-items-center d-flex"><span class="flaticon-tour-guide"></span></div>
              <div class="media-body">
                <h3 class="heading mb-3">Dapat Disimpan</h3>
                <p>Karena hasil tes yang sudah kamu kerjakan dapat disimpan</p>
              </div>
            </div>      
          </div> 
      </div>
<?php $this->load->view ("user/footer")?>