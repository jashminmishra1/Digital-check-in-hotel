<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%! String userName; String pin; %>
<%

    
	Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","");
Statement st= con.createStatement();
ResultSet rs;
String userName = session.getAttribute("phone").toString();
String sql="SELECT pin FROM book WHERE phone='"+userName+"'";
rs = st.executeQuery(sql);
String pin="";
while(rs.next()){
	
pin=rs.getString(1);
}
    %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>QR CODE</title>
	
    <script src="qrcode.js"></script>
    <script src="html2canvas.min.js"></script>
	<script src="http://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
    <script src="assets/js/freelancer.js"></script>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <script>
        
        function saveQR()
{
html2canvas(document.querySelector("#sc")).then(canvas => {
    document.body.appendChild(canvas)
});	
}
        </script>
    <style> 
    img{
            width: 25%;
			margin-top:10px;
			margin:auto;
            background-color: aqua;
			
        }
        </style>
</head>

<body id="page-top">
    <nav class="navbar navbar-light navbar-expand-lg fixed-top bg-secondary text-uppercase" id="mainNav">
        <div class="container"><a class="navbar-brand js-scroll-trigger" href="#page-top">JASP Hotel</a>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item mx-0 mx-lg-1" role="presentation"></li>
                    <a href="javascript:saveQR();" >Screenshot Your Qr code & Scroll down to downlaod</a>
                </ul>
            </div>
        </div>
    </nav>
    <header id="sc" class="masthead bg-primary text-white text-center" style="background-color: rgb(255,255,255);">
        <div class="container" style="background-color: #0CEBD;"><main>
            <div id="output"></div>
        </main>  
        
            <h1 style="color: rgb(0,0,0); font-size: 200%;">QR CODE</h1>
            <h2 id="pin" class="font-weight-light mb-0" style="padding: 20;margin-top: 10;color: rgb(0,0,0);"><%out.println(pin);%></h2>
        </div>
    </header>
    <div class="copyright py-4 text-center text-white">
        <div class="container"><small>Copyright © JASPHotel</small></div>
    </div> 
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
    <script src="assets/js/freelancer.js"></script>
    <script>
        var v = "<%=userName%>";
        let qrcode = new QRCode("output", {
            text: v,
            width: 177,
            height: 177,
            colorDark : "rgb(0,0,0)",
            colorLight : "#18BC9C",
            correctLevel : QRCode.CorrectLevel.H
        });
        
    </script>
    
</body>
</html>