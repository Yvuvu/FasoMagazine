<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta content="" name="keywords">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Faso magazine &amp; Journal hebdomadaire</title>

    <!-- Favicon -->
    <link rel="icon" href="{{asset('assets/img/core-img/favicon.ico')}}">

    <!-- Core Stylesheet -->
    <link href="{{asset('assets/css/style1.css')}}" rel="stylesheet">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Playfair+Display:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="{{asset('assets/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('assets/vendor/icofont/icofont.min.css')}}" rel="stylesheet">
    <link href="{{asset('assets/vendor/boxicons/css/boxicons.min.css')}}" rel="stylesheet">
    <link href="{{asset('assets/vendor/animate.css/animate.min.css')}}" rel="stylesheet">
    <link href="{{asset('assets/vendor/owl.carousel/assets/owl.carousel.min.css')}}" rel="stylesheet">
    <link href="{{asset('assets/vendor/venobox/venobox.css')}}" rel="stylesheet">
    <link href="{{asset('assets/vendor/aos/aos.css')}}" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="{{asset('assets/css/style.css')}}" rel="stylesheet">

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
  <section id="hero" class="d-flex align-items-center">
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
        <!-- ##### Hero Area End ##### -->
          <!-- <div class="row"> -->
            <div class="col-lg-8 hero1">
              <h1>Vous êtes à <span>Faso Magazine</span></h1>
              <h2>L'information, la VRAIE, depuis plus de 18 ans!</h2>
    
              <div class="btns">
                <a href="#newsletter" class="btn-menu animated fadeInUp scrollto">Newsletter</a>
                <a href="#abonnement" class="btn-book animated fadeInUp scrollto">Abonnement</a>
              </div>
            </div>
        </div>
      </section><!-- End Hero -->
    
      <main id="main">

        <!-- ======= Events Section ======= -->
        <section id="events" class="events">
            <div class="container" data-aos="fade-up">
        
                <div class="section-title">
                <h2>A la une!</h2>
                <p>Focus sur l'actualité du moment!</p>
                </div>
                
                <div class="owl-carousel events-carousel" data-aos="fade-up" data-aos-delay="100">
        
                        @foreach($focus as $focus)
                <div class="row event-item">
                    <div class="col-lg-6">
                    <img src="{{ Voyager::image( $focus->image ) }}" class="img-fluid" alt="">
                    </div>
                    <div class="col-lg-6 pt-4 pt-lg-0 content">
                    <h3>{{ $focus->category->name }}</h3>
                    <div class="price">
                        <p class="font-italic"><span>{{ $focus->title }}</span></p>
                    </div>
                    {{-- <p class="font-italic">
                            {{ $focus->title }}
                    </p> --}}
                    <ul>
                        <li><i class="icofont-check-circled"></i> {{ $focus->excerpt }}</li>
                        {{-- <li><i class="icofont-check-circled"></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li>
                        <li><i class="icofont-check-circled"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li> --}}
                    </ul>
                    <div class="read-more">
                        <a href="{{URL('post', $focus->slug )}}">Read More...</a>
                    </div>
                    </div>
                </div>               
        
                
                @endforeach
                </div>
                
            </div>
            </section><!-- End Events Section -->

            <!-- ======= Specials Section ======= -->
            <section id="specials" class="specials">
                <div class="container" data-aos="fade-up">
        
                <div class="section-title">
                    <h2>Actualités</h2>
                    <p>Toute l'actualité nationale!</p>
                </div>
        
                <div class="row" data-aos="fade-up" data-aos-delay="100">
                    <div class="col-lg-3">
                    {{-- <ul class="nav nav-tabs flex-column">
                        
                        @foreach($category as $category)
                        
                        <li class="nav-item"><i class="bx bx-chevron-right"></i><a href="category/{{ $category->id }}">{{ $category->name }}</a></li>
                        
                        @endforeach
                    </ul> --}}
                    <ul class="nav nav-tabs flex-column">
                        <li class="nav-item">
                        <a class="nav-link active show" data-toggle="tab" href="#tab-1">Politique</a>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link" data-toggle="tab"  href="#tab-2">Economie</a>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#tab-3">Société</a>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#tab-4">Coopération</a>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#tab-5">Culture</a>
                        </li>
                    </ul>
                    </div>
                    <div class="col-lg-9 mt-4 mt-lg-0">
                    <div class="tab-content">
                        <div class="tab-pane active show" id="tab-1">
                            <div class="row">
                                @foreach($posts as $post)
                                <div class="col-lg-6 details order-2 order-lg-1">
                                    <article class="entry">
            
                                        <div class="entry-img">
                                            <img src="{{ Voyager::image( $post->image ) }}" alt="" class="img-fluid">
                                        </div>
                        
                                        <h2 class="entry-title">
                                            <a href="{{URL('post', $post->slug )}}">{{ $post->title }}</a>
                                        </h2>
                        
                                        <div class="entry-meta">
                                            <ul>
                                            <li class="d-flex align-items-center"><i class="icofont-user"></i> <a href="{{URL('post', $post->slug )}}">{{ $post->authorId }}</a></li>
                                            <li class="d-flex align-items-center"><i class="icofont-wall-clock"></i> <a href="{{URL('post', $post->slug )}}"><time datetime="2020-01-01">{{ $post->created_at }}</time></a></li>
                                            </ul>
                                        </div>
                        
                                        <div class="entry-content">
                                            <p>
                                                    {{ $post->excerpt }}
                                            </p>
                                            <div class="read-more">
                                            <a href="post/{{ $post->slug }}">Read More</a>
                                            </div>
                                        </div>
                        
                                    </article>
                                </div>
                                @endforeach
                                
                            </div>
                            <div>{{ $posts->links() }}</div>
                        </div>
                        <div class="tab-pane" id="tab-2">
                            <div class="row">
                                    @foreach($posts as $post)
                                <div class="col-lg-6 details order-2 order-lg-1">
                                    <article class="entry">
            
                                        <div class="entry-img">
                                            <img src="{{ Voyager::image( $post->image ) }}" alt="" class="img-fluid">
                                        </div>
                        
                                        <h2 class="entry-title">
                                            <a href="{{URL('post', $post->slug )}}">{{ $post->title }}</a>
                                        </h2>
                        
                                        <div class="entry-meta">
                                            <ul>
                                            <li class="d-flex align-items-center"><i class="icofont-user"></i> <a href="{{URL('post', $post->slug )}}">{{ $post->author_id }}</a></li>
                                            <li class="d-flex align-items-center"><i class="icofont-wall-clock"></i> <a href="{{URL('post', $post->slug )}}"><time datetime="2020-01-01">Jan 1, 2020</time></a></li>
                                            </ul>
                                        </div>
                        
                                        <div class="entry-content">
                                            <p>
                                                    {{ $post->excerpt }}
                                            </p>
                                            <div class="read-more">
                                            <a href="/post/{{ $post->slug }}">Read More</a>
                                            </div>
                                        </div>
                        
                                    </article>
                                </div>
                                @endforeach
                                
                            </div>
                            <div>{{ $posts->links() }}</div>
                        </div>
                        <div class="tab-pane" id="tab-3">
                            <div class="row">
                                    @foreach($posts as $post)
                                <div class="col-lg-6 details order-2 order-lg-1">
                                    <article class="entry">
            
                                        <div class="entry-img">
                                            <img src="{{ Voyager::image( $post->image ) }}" alt="" class="img-fluid">
                                        </div>
                        
                                        <h2 class="entry-title">
                                            <a href="{{URL('post', $post->slug )}}">{{ $post->title }}</a>
                                        </h2>
                        
                                        <div class="entry-meta">
                                            <ul>
                                            <li class="d-flex align-items-center"><i class="icofont-user"></i> <a href="{{URL('post', $post->slug )}}">{{ $post->author_id }}</a></li>
                                            <li class="d-flex align-items-center"><i class="icofont-wall-clock"></i> <a href="{{URL('post', $post->slug )}}"><time datetime="2020-01-01">Jan 1, 2020</time></a></li>
                                            </ul>
                                        </div>
                        
                                        <div class="entry-content">
                                            <p>
                                                    {{ $post->excerpt }}
                                            </p>
                                            <div class="read-more">
                                            <a href="/post/{{ $post->slug }}">Read More</a>
                                            </div>
                                        </div>
                        
                                    </article>
                                </div>
                                @endforeach
                                
                            </div>
                            <div>{{ $posts->links() }}</div>
                        </div>
                        <div class="tab-pane" id="tab-4">
                        <div class="row">
                                @foreach($posts as $post)
                            <div class="col-lg-6 details order-2 order-lg-1">
                                <article class="entry">

                                    <div class="entry-img">
                                        <img src="{{ Voyager::image( $post->image ) }}" alt="" class="img-fluid">
                                    </div>
                    
                                    <h2 class="entry-title">
                                        <a href="{{URL('post', $post->slug )}}">{{ $post->title }}</a>
                                    </h2>
                    
                                    <div class="entry-meta">
                                        <ul>
                                        <li class="d-flex align-items-center"><i class="icofont-user"></i> <a href="{{URL('post', $post->slug )}}">{{ $post->author_id }}</a></li>
                                        <li class="d-flex align-items-center"><i class="icofont-wall-clock"></i> <a href="{{URL('post', $post->slug )}}"><time datetime="2020-01-01">Jan 1, 2020</time></a></li>
                                        </ul>
                                    </div>
                    
                                    <div class="entry-content">
                                        <p>
                                                {{ $post->excerpt }}
                                        </p>
                                        <div class="read-more">
                                        <a href="/post/{{ $post->slug }}">Read More</a>
                                        </div>
                                    </div>
                    
                                </article>
                            </div>
                            @endforeach
                            
                        </div>
                        <div>{{ $posts->links() }}</div>
                        </div>
                        <div class="tab-pane" id="tab-5">
                            <div class="row">
                                    @foreach($posts as $post)
                                <div class="col-lg-6 details order-2 order-lg-1">
                                    <article class="entry">
            
                                        <div class="entry-img">
                                            <img src="{{ Voyager::image( $post->image ) }}" alt="" class="img-fluid">
                                        </div>
                        
                                        <h2 class="entry-title">
                                            <a href="{{URL('post', $post->slug )}}">{{ $post->title }}</a>
                                        </h2>
                        
                                        <div class="entry-meta">
                                            <ul>
                                            <li class="d-flex align-items-center"><i class="icofont-user"></i> <a href="{{URL('post', $post->slug )}}">{{ $post->author_id }}</a></li>
                                            <li class="d-flex align-items-center"><i class="icofont-wall-clock"></i> <a href="{{URL('post', $post->slug )}}"><time datetime="2020-01-01">Jan 1, 2020</time></a></li>
                                            </ul>
                                        </div>
                        
                                        <div class="entry-content">
                                            <p>
                                                    {{ $post->excerpt }}
                                            </p>
                                            <div class="read-more">
                                            <a href="/post/{{ $post->slug }}">Read More</a>
                                            </div>
                                        </div>
                        
                                    </article>
                                </div>
                                @endforeach
                                
                                </div>
                            <div>{{ $posts->links() }}</div>
                        </div>
                    </div>
                    </div>
                </div>
        
                </div>
            </section><!-- End Specials Section -->   
      
    <!-- ##### Featured Post Area Start ##### -->
    <section id="menu" class="menu section-bg">
        <div class="container" data-aos="fade-up">
  
          <div class="section-title">
            <h2>International</h2>
            <p>Découvrez l'actualité hors de chez nous!</p>
          </div>
    <div class="featured-post-area">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-8">
                    <div class="row">

                    <iframe src="{{URL('inter')}}" width="710px" height="1350px" frameborder="0" scrolling="yes" marginwidth="0" marginheight="0"></iframe>
                    </div>
                </div>

                <div class="col-12 col-md-6 col-lg-4 lateral">
                    <h3>Dernières nouvelles</h3>
                    <!-- Single Featured Post -->
                    @foreach($last as $last)
                    <div class="single-blog-post small-featured-post d-flex">
                        <div class="post-thumb">
                            <a href="{{URL('post', $last->slug )}}"><img src="{{asset('assets/img/bg-img/19.jpg')}}" alt=""></a>
                        </div>
                        <div class="post-data">
                        <a href="{{URL('post', $last->slug )}}" class="post-catagory">{{$last->category->name}}</a>
                            <div class="post-meta">
                                <a href="{{URL('post', $last->slug )}}" class="post-title">
                                    <h6>{{$last->title}}</h6>
                                </a>
                                <p class="post-date"><span>{{$last->created_at}}</span></p>
                            </div>
                        </div>
                    </div>
                    @endforeach

                    <div class="newsletter-widget">
                            <h4 id="abonnement">Abonnez-vous</h4>
                            <p>Abonnez-vous et recevez le journal dans votre email, pour ne rien manquer de l'actualité.</p>
                            <form action="#" method="post">
                                <input type="text" name="text" placeholder="Nom et prénom">
                                <input type="email" name="email" placeholder="Email">
                                <button type="submit" class="btn w-100">S'abonner</button>
                            </form>
                        </div>
                </div>
            </div>
        </div>
    </div>
</div>
</section>
    <!-- ##### Featured Post Area End ##### -->
        
    
        <!-- ======= Contact Section ======= -->
        <section id="contact" class="contact">
          <div class="container" data-aos="fade-up">
    
            <div class="section-title">
              <h2>Nos régions</h2>
              <p>L'actualité de nos régions</p>
            </div>
          </div>
    
          <div data-aos="fade-up">
            <iframe style="border:0; width: 100%; height: 350px;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12097.433213460943!2d-74.0062269!3d40.7101282!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb89d1fe6bc499443!2sDowntown+Conference+Center!5e0!3m2!1smk!2sbg!4v1539943755621" frameborder="0" allowfullscreen></iframe>
          </div>    
        
        </section><!-- End Contact Section -->
    
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
                    @if (\Session::has('success'))
                    <div class="alert alert-success">
                      <p>{{ \Session::get('success') }}</p>
                    </div><br />
                   @endif
                   @if (\Session::has('failure'))
                    <div class="alert alert-danger">
                      <p>{{ \Session::get('failure') }}</p>
                    </div><br />
                   @endif
                <h4 id="newsletter">Notre Newsletter</h4>
                <p>Entrez votre email et soyez notifiés à chaque nouvelle actualité, pour ne rien rater</p>
                <form action="{{url('newsletter')}}" method="post">
                        @csrf
                  <input type="email" name="email" class="form-control" placeholder="votre email"><input type="submit" value="Souscrire">
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

    <div id="preloader"></div>
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

</html>