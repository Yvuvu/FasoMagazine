<!DOCTYPE html>
<html lang="{{ config('app.locale') }}">
 <head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta content="" name="keywords">
 
     <title>International</title>
     <!-- Fonts -->
     <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet" type="text/css">

      <!-- Favicon -->
    <link rel="icon" href="{{asset('assets/img/core-img/favicon.ico')}}">
 

    <!-- Core Stylesheet -->
    <link href="{{asset('assets/css/style1.css')}}" rel="stylesheet">
    <!-- Template Main CSS File -->
    <link href="{{asset('assets/css/style.css')}}" rel="stylesheet">

        <!-- Styles -->
        <link href="{{asset('assets/css/app.min.css') }}" rel="stylesheet">
     <!-- Latest compiled and minified CSS -->
     {{-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> --}}
 
    <!-- Vendor CSS Files -->
    <link href="{{asset('assets/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('assets/vendor/icofont/icofont.min.css')}}" rel="stylesheet">
    <link href="{{asset('assets/vendor/boxicons/css/boxicons.min.css')}}" rel="stylesheet">
    <link href="{{asset('assets/vendor/animate.css/animate.min.css')}}" rel="stylesheet">
    <link href="{{asset('assets/vendor/owl.carousel/assets/owl.carousel.min.css')}}" rel="stylesheet">
    <link href="{{asset('assets/vendor/venobox/venobox.css')}}" rel="stylesheet">
    <link href="{{asset('assets/vendor/aos/aos.css')}}" rel="stylesheet">
 </head>
 <body>

  <!-- ======= Top Bar ======= -->
  <div id="topbar" class="d-flex align-items-center fixed-top">
        <div class="container d-flex">
            <div class="contact-info mr-auto">
            <i class="icofont-phone"></i> +226 25 00 00 00
            <span class="d-none d-lg-inline-block"><i class="icofont-clock-time icofont-rotate-180"></i> Mon-Sat: 11:00 AM - 23:00 PM</span>
            </div>
        </div>
        </div>
    
        <!-- ======= Header ======= -->
        <header id="header" class="fixed-top">
            <div class="container d-flex align-items-center">
        
                <h1 class="logo mr-auto"><a href="{{url('/')}}">Faso magazine</a></h1>
                <!-- Uncomment below if you prefer to use an image logo -->
                <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
        
                <nav class="nav-menu d-none d-lg-block">
                    <ul>
                        <li class="active"><a href="{{url('/')}}">Accueil</a></li>
                        @foreach($category as $categori)
                        
                        <li><a href="{{URL('category', $categori->id )}}">{{ $categori->name }}</a></li>
                        
                        @endforeach
                        <li><a href="{{url('international')}}">International</a></li>
                        <li class="book-a-table text-center"><a href="#abonnement">Abonnez-vous</a></li>
                    </ul>
                </nav><!-- .nav-menu -->
        
            </div>
        </header><!-- End Header -->
    
         <!-- ======= Hero Section ======= -->
      <section id="heropost" class="d-flex align-items-center">
            <div class="container position-relative text-center text-lg-left" data-aos="zoom-in" data-aos-delay="100">
                    <!-- ##### Hero Area Start ##### -->
            <div class="hero-area">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-12 col-lg-8">
                            <!-- Breaking News Widget -->
                            <div class="breaking-news-area d-flex align-items-center">
                                <div class="news-title">
                                    <p>Breaking News</p>
                                </div>
                                <div id="breakingNewsTicker" class="ticker">
                                    <ul>
                                        @foreach($focus as $focu)
                                        <li><a href="{{URL('post', $focu->slug )}}">{{$focu->title}}</a></li>                                    
                                        @endforeach
                                    </ul> 
                                </div>
                            </div>
        
                            <!-- Breaking News Widget -->
                            <div class="breaking-news-area d-flex align-items-center mt-15">
                                <div class="news-title title2">
                                    <p>International</p>
                                </div>
                                <div id="internationalTicker" class="ticker">
                                    <ul>
                                        <li><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></li>
                                        <li><a href="#">Welcome to Colorlib Family.</a></li>
                                        <li><a href="#">Nam eu metus sitsit amet, consec!</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
        
                        <!-- Hero Add -->
                        <div class="col-12 col-lg-4">
                            <div class="hero-add">
                                <a href="#"><img src="{{asset('assets/img/bg-img/hero-add.gif')}}" alt=""></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    
            </div>
          </section><!-- End Hero -->
        
          <main id="main">
 <div id="appendDivNews">
     <nav class="navbar navbar-light bg-faded" style="background-color: #ff1857;">
         <a class="navbar-brand" href="#">News Around the World</a>
     </nav>
     {{ csrf_field() }}
     <section id="content" class="section-dropdown">
         <p class="select-header"> Select a news source: </p>
         <label class="select">
             <select name="news_sources" id="news_sources">
                 <option value="{{$sourceId}} : {{$sourceName}}">{{$sourceName}}</option>
                 @foreach ($newsSources as $newsSource)
                     <option value="{{$newsSource['id']}} : {{$newsSource['name'] }}">{{$newsSource['name']}}</option>
                 @endforeach
             </select>
 
         </label>
         <object id="spinner" data="{{asset('assets/img/spinner.svg')}}" type="image/svg+xml" hidden></object>
     </section>
     <div id="news">
         <p> News Source : {{$sourceName}} </p>
 
 
         <section class="news">
             @foreach($news as $selectedNews)
 
                 <article>
                     <img src="{{$selectedNews['urlToImage']}}" alt=""/>
                     <div class="text">
                         <h1>{{$selectedNews['title']}}</h1>
                         <p style="font-size: 14px">{{$selectedNews['description']}} <a href="{{$selectedNews['url']}}"
                                                                                        target="_blank">
                                 <small>read more...</small>
                             </a></p>
                         <div style="padding-top: 5px;font-size: 12px">
                             Author: {{$selectedNews['author'] ? : "Unknown" }}</div>
                         @if($selectedNews['publishedAt'] !== null)
                             <div style="padding-top: 5px;">Date
                                 Published: {{ Carbon\Carbon::parse($selectedNews['publishedAt'])->format('l jS \\of F Y ') }}</div>
                         @else
                             <div style="padding-top: 5px;">Date Published: Unknown</div>
                         @endif
 
                     </div>
                 </article>
             @endforeach
         </section>
 
 
     </div>
 </div>

</main><!-- End #main -->


<!-- ##### Video Post Area Start ##### -->
<div class="video-post-area bg-img bg-overlay" style="background-image: url({{asset('assets/img/bg-img/bg1.jpg')}};">
    <div class="container">
        <div class="row justify-content-center">
            <!-- Single Video Post -->
            <div class="col-12 col-sm-6 col-md-4">
                <div class="single-video-post">
                    <img src="{{asset('assets/img/bg-img/video1.jpg')}}" alt="">
                    <!-- Video Button -->
                    <div class="videobtn">
                        <a href="https://www.youtube.com/watch?v=5BQr-j3BBzU" class="videoPlayer"><i class="fa fa-play" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>

            <!-- Single Video Post -->
            <div class="col-12 col-sm-6 col-md-4">
                <div class="single-video-post">
                    <img src="{{asset('assets/img/bg-img/video2.jpg')}}" alt="">
                    <!-- Video Button -->
                    <div class="videobtn">
                        <a href="https://www.youtube.com/watch?v=5BQr-j3BBzU" class="videoPlayer"><i class="fa fa-play" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>

            <!-- Single Video Post -->
            <div class="col-12 col-sm-6 col-md-4">
                <div class="single-video-post">
                    <img src="{{asset('assets/img/bg-img/video3.jpg')}}" alt="">
                    <!-- Video Button -->
                    <div class="videobtn">
                        <a href="https://www.youtube.com/watch?v=5BQr-j3BBzU" class="videoPlayer"><i class="fa fa-play" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ##### Video Post Area End ##### -->

<!-- ##### Footer Add Area Start ##### -->
<div class="footer-add-area">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="footer-add">
                    <a href="#"><img src="{{asset('assets/img/bg-img/footer-add.gif')}}" alt=""></a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ##### Footer Add Area End ##### -->

<!-- ======= Footer ======= -->
<footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6">
            <div class="footer-info">
              <h3>Faso magazine</h3>
              <p>
                A108 Ouagadougou <br>
                NY 535022, BURKINA FASO<br><br>
                <strong>Téléphone:</strong> +226 25 00 00 00<br>
                <strong>Email:</strong> info@fasomagazine.com<br>
              </p>
              <div class="social-links mt-3">
                <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
              </div>
            </div>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Liens utiles</h4>
            <ul>
                <li><i class="bx bx-chevron-right"></i><a href="{{url('/')}}">Accueil</a></li>
                @foreach($category as $category)
                
                <li><i class="bx bx-chevron-right"></i><a href="{{URL('category', $category->id )}}">{{ $category->name }}</a></li>
                
                @endforeach
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Numéros utiles</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Pompiers: 18</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Police: 17</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Gendarmerie: 16</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">CNVA: 1010</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">CORUS: 3535</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Standard police: 25 33 12 83</a></li>
            </ul>
          </div>

          <div class="col-lg-4 col-md-6 footer-newsletter">
            <h4 id="newsletter">Notre Newsletter</h4>
            <p>Entrez votre email et soyez notifiés à chaque nouvelle actualité, pour ne rien rater</p>
            <form action="" method="post">
              <input type="email" name="email" placeholder="votre email"><input type="submit" value="Souscrire">
            </form>

          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>Faso magazine</span></strong>. Tous droits réservés
      </div>
      <div class="credits">            
        Designed by <a href="simplon.co">Simplon Burkina / Groupe7</a>
      </div>
    </div>
  </footer><!-- End Footer -->

{{-- <div id="preloader"></div> --}}
<a href="#" class="back-to-top"><i class="bx bx-up-arrow-alt"></i></a>

        <!-- ##### All Javascript Files ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="{{asset('assets/js/jquery/jquery-2.2.4.min.js')}}"></script>
    <!-- Popper js -->
    <script src="{{asset('assets/js/bootstrap/popper.min.js')}}"></script>
    <!-- Bootstrap js -->
    <script src="{{asset('assets/js/bootstrap/bootstrap.min.js')}}"></script>
    <!-- All Plugins js -->
    <script src="{{asset('assets/js/plugins/plugins.js')}}"></script>
  
    <!-- Vendor JS Files -->
    <!-- <script src="assets/vendor/jquery/jquery.min.js"></script> -->
    <script src="{{asset('assets/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <script src="{{asset('assets/vendor/jquery.easing/jquery.easing.min.js')}}"></script>
    <script src="{{asset('assets/vendor/php-email-form/validate.js')}}"></script>
    <script src="{{asset('assets/vendor/owl.carousel/owl.carousel.min.js')}}"></script>
    <script src="{{asset('assets/vendor/isotope-layout/isotope.pkgd.min.js')}}"></script>
    <script src="{{asset('assets/vendor/venobox/venobox.min.js')}}"></script>
    <script src="{{asset('assets/vendor/aos/aos.js')}}"></script>
  
    <!-- Active js -->
    <script src="{{asset('assets/js/active.js')}}"></script>
    <!-- Template Main JS File -->
    <script src="{{asset('assets/js/main.js')}}"></script>
 
 </body>
 <!-- jQuery library -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
 
 <!-- Latest compiled JavaScript -->
 {{-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> --}}
 <!-- Scripts -->
 <script src="{{asset('assets/js/app.js') }}"></script>
 
 </html>