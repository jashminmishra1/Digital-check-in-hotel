<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Home - Brand</title>
    <link rel="stylesheet" href="asset/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli">
    <link rel="stylesheet" href="asset/fonts/font-awesome.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>

<body id="page-top">
    <nav class="navbar navbar-light navbar-expand-lg fixed-top" id="mainNav">
        <div class="container"><a class="navbar-brand js-scroll-trigger" href="#page-top">JSPA HOTEL</a><button data-toggle="collapse" data-target="#navbarResponsive" class="navbar-toggler float-right" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
            <div
                class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item" role="presentation"></li>
                    <li class="nav-item" role="presentation"></li>
                    <li class="nav-item" role="presentation"><a class="nav-link js-scroll-trigger" href="#contact">Contact</a></li>
                </ul>
        </div>
        </div>
    </nav>
    <p id="para" name="para"></p>
    <header class="masthead" style="background:url('asset/img/bg-pattern.png'), linear-gradient(to left, #7b4397, #dc2430);height:100%;">
        <div class="container h-100">
            <div class="row h-100">
                <div class="col-lg-7 my-auto">
                    <div class="mx-auto header-content">
                        <h1 class="text-center d-block float-left mb-5"><strong>Welcome To Our Hotel</strong><br><strong>Make your life luxurious and ease the living.</strong><br><a class="btn btn-outline-warning btn-xl js-scroll-trigger" role="button" href="#download">Contact if any query</a><br><strong>&nbsp;</strong></h1>
                    </div>
                </div>
                <div class="col-lg-5 my-auto">
                    <div class="device-container">
                        <div class="device-mockup iphone6_plus portrait white">
                            <div class="device" style="background-image:url('asset/img/iphone_6_plus_white_port.png');">
                                <div class="screen"><video id="preview" height="510"></video></div>
                                <div class="button"></div>
                            </div>
                        </div>
                    </div>
                    <div class="iphone-mockup"></div>
                </div>
            </div>
        </div>
    </header>
    <script type="text/javascript">
          let scanner = new Instascan.Scanner({ video: document.getElementById('preview') });
          scanner.addListener('scan', function (content) {
                var epin = prompt("Please Enter Your Pin"); 
                window.location.replace("test1.jsp?decode="+content+"&pin="+epin); 
          });
          Instascan.Camera.getCameras().then(function (cameras) {
            if (cameras.length > 0) {
              scanner.start(cameras[0]);
            } else {
              console.error('No cameras found.');
            }
          }).catch(function (e) {
            console.error(e);
          });
          
        </script>
       
    <footer>
        <div class="container">
            <p>©&nbsp;JSPA Hotel. All Rights Reserved.</p>
        </div>
    </footer>
    <script src="asset/js/jquery.min.js"></script>
    <script src="asset/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
    <script src="asset/js/new-age.js"></script>
</body>

</html>