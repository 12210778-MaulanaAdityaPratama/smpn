@extends('pages.home.index')

@section('content')
<header id="header" class="fixed-top d-flex align-items-center">
    <div class="container">
      <div class="header-container d-flex align-items-center">
        <div class="logo mr-auto">
          <h1 class="text-light"><a href="{{ route('landing-page') }}"><span>SMPN 1 Satap Sanggau</span></a></h1>
          <!-- Uncomment below if you prefer to use an image logo -->
          <!-- <a href="index.html"><img src="{{asset('assets/img/logo.png')}}" alt="" class="img-fluid"></a>-->
        </div>

        <nav class="nav-menu d-none d-lg-block">
          <ul>
            <li class="active"><a href="#header">Beranda</a></li>
            <li><a href="#about">Tentang</a></li>
            <li><a href="#services">Fasilitas</a></li>
            <li><a href="#contact">Kontak</a></li>
            <li class="get-started"><a href="{{ route('daftar') }}">Daftar</a></li>
          </ul>
        </nav><!-- .nav-menu -->
      </div><!-- End Header Container -->
    </div>
  </header>
<!-- ======= Hero Section ======= -->
<section id="hero" class="d-flex align-items-center">
    <div class="container text-center position-relative" data-aos="fade-in" data-aos-delay="200">
    <h1>Selamat Datang di SMPN 1 Satap Sanggau </h1>
    <h2>Ayo Kita Belajar Bersama</h2>
    <a href="{{ route('daftar') }}" class="btn-get-started scrollto">Daftar Sekarang</a>
    </div>
</section><!-- End Hero -->

<main id="main">

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
    <div class="container">

        <div class="row content">
        <div class="col-lg-6" data-aos="fade-right" data-aos-delay="100">
            <img src="{{asset('assets/img/coba.jpg')}}" alt="" class="img-fluid">
        </div>
        <div class="col-lg-6 pt-4 pt-lg-0" data-aos="fade-left" data-aos-delay="200">
            <p>
                SMPN 1 Satap Sanggau
            </p>
            <p class="font-italic">
                NPSN : 30012034 <br>
                Status : Negri <br>
                Bentuk Pendidikan : SMP <br>
                Status Kepemilikan : Pemerintah Daerah <br>
                Sk Pendirian Sekolah : 330 Tahun 2010
                Tanggal SK Pendirian : 23-08-2010
                SK Izin Operasi : 330 Tahun 2010
                Tanggal SK Izin Operasi : 23-08-2010
            </p>
        </div>
        </div>

    </div>
    </section><!-- End About Section -->

    <!-- ======= Why Us Section ======= -->
    <section id="why-us" class="why-us">
    <div class="container">

        <div class="row">
        <div class="col-lg-4 d-flex align-items-stretch" data-aos="fade-right">
            <div class="content">
            <h3>Kenapa Memilih Sekolah Ini?</h3>
            <p>
                
            </p>
            </div>
        </div>
        <div class="col-lg-8 d-flex align-items-stretch">
            <div class="icon-boxes d-flex flex-column justify-content-center">
            <div class="row">
                <div class="col-xl-4 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
                <div class="icon-box mt-4 mt-xl-0">
                    <i class="bx bx-receipt"></i>
                    <h4>Ruang Kelas</h4>
                    <p>SMPN 1 Satap Sanggau Memiliki 4 ruang mengajar</p>
                </div>
                </div>
                <div class="col-xl-4 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="200">
                <div class="icon-box mt-4 mt-xl-0">
                    <i class="bx bx-cube-alt"></i>
                    <h4>Lebih Menekankan Kepada Pendidikan Karakter</h4>
                    <p>Memungkinkan Siswa Lebih Aktif, Inovatif dan Kreatif, Lebih Responsif Terhadap Fenomena Sosial yang Ada, Proses Penilaian Dilakukan Dari Semua Aspek, Lembaga Memperoleh Pendampingan dari Pusat.</p>
                </div>
                </div>
               
            </div>
            </div><!-- End .content-->
        </div>
        </div>

    </div>
    </section><!-- End Why Us Section -->

    <!-- ======= Services Section ======= -->
    <section id="services" class="services section-bg">
    <div class="container">

        <div class="row">
        <div class="col-lg-4">
            <div class="section-title" data-aos="fade-right">
            <h2>Fasilitas</h2>
            <p>Fasilitas belajar merupakan sarana dan prasarana pembelajaran. Prasarana meliputi kantin, ruang belajar, perpustakaan, dll.</p>
            </div>
        </div>
        <div class="col-lg-8">
            <div class="row">
            <div class="col-md-6 d-flex align-items-stretch">
                <div class="icon-box align-self-center" data-aos="zoom-in" data-aos-delay="100">
                <img src="{{asset('assets/img/1.jpg')}}" class="img-fluid" alt="">
                </div>
            </div>

            <div class="col-md-6 d-flex align-items-stretch mt-4 mt-lg-0">
                <div class="icon-box align-self-center" data-aos="zoom-in" data-aos-delay="200">
                <img src="{{asset('assets/img/2.jpg')}}" class="img-fluid" alt="">
                </div>
            </div>

            <div class="col-md-6 d-flex align-items-stretch mt-4">
                <div class="icon-box align-self-center" data-aos="zoom-in" data-aos-delay="300">
                <img src="{{asset('assets/img/3.jpg')}}" class="img-fluid" alt="">
                </div>
            </div>

            <div class="col-md-6 d-flex align-items-stretch mt-4">
                <div class="icon-box align-self-center" data-aos="zoom-in" data-aos-delay="400">
                <img src="{{asset('assets/img/4.jpg')}}" class="img-fluid" alt="">
                </div>
            </div>

            </div>
        </div>
        </div>

    </div>
    </section><!-- End Services Section -->

    

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
    <div class="container">
        <div class="row">
        <div class="col-lg-4" data-aos="fade-right">
            <div class="section-title">
            <h2>Lokasi</h2>
            </div>
        </div>

        <div class="col-lg-8" data-aos="fade-up" data-aos-delay="100">
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15959.27292354466!2d110.66121466977539!3d-0.012132999999998437!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e027562795d1893%3A0xc2798ced928a789f!2sSMP%20Negeri%2013%20Satap%20Sanggau!5e0!3m2!1sid!2sid!4v1686216619422!5m2!1sid!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
           
            
        </div>
        </div>

    </div>
    </section><!-- End Contact Section -->

</main>
<!-- End #main -->
@endsection