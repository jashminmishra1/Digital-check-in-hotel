
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%! String chkin; String chkout; String no_per; String room; String name;%>
<%Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","");
Statement st= con.createStatement();
ResultSet rs;
String phone = session.getAttribute("phone").toString();
String sql="SELECT * from book where phone='"+phone+"'";
rs = st.executeQuery(sql);
while(rs.next()){
    name = rs.getString("email");
    chkin = rs.getString("chkin");
    chkout = rs.getString("chkout");
    no_per = rs.getString("no_per");
    room = rs.getString("roomno");
    
}
%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>JSPA ROOMs</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic">
    <link rel="stylesheet" href="assets/fonts/simple-line-icons.min.css">
</head>

<body id="page-top">
    <section id="services" class="content-section bg-primary text-white text-center" style="height: 652px;">
        <div class="container">
            <div class="content-section-heading">
                <h3 class="text-secondary mb-0" style="/*font-size: 55;*/">WELCOME TO JSPA HOTEL</h3>
                <h2 class="mb-5"><%=name%></h2>
            </div>
            <div class="row">
                <div class="col-md-6 col-lg-3 mb-5 mb-lg-0"><span class="mx-auto service-icon rounded-circle mb-3"><i class="icon-check"></i></span>
                    <h4><strong>CHECK IN</strong></h4>
                    <p class="mb-0 text-faded"></p>
                    <p><%=chkin%></p>
                </div>
                <div class="col-md-6 col-lg-3 mb-5 mb-lg-0"><span class="mx-auto service-icon rounded-circle mb-3"><i class="icon-plane"></i></span>
                    <h4><strong>CHECK OUT</strong></h4>
                    <p><%=chkout%></p>
                    <p class="mb-0 text-faded"></p>
                </div>
                <div class="col-md-6 col-lg-3 mb-5 mb-lg-0"><span class="mx-auto service-icon rounded-circle mb-3"><i class="icon-people"></i></span>
                    <h4><strong>No Of Persons</strong></h4>
                    <p class="mb-0 text-faded"><span></span><span></span></p>
                    <p><%=no_per%></p>
                </div>
                <div class="col-md-6 col-lg-3 mb-5 mb-lg-0"><span class="mx-auto service-icon rounded-circle mb-3"><i class="icon-home"></i></span>
                    <h4><strong>Room No</strong></h4>
                    <p class="mb-0 text-faded"></p>
                    <p><%=room%></p>
                </div>
            </div>
        </div>
    </section>
    <script>
        function loadDocOn() {
                var user1 = "9778471728";
              var xhttp = new XMLHttpRequest();
              xhttp.open("GET", "http://blynk-cloud.com/I_90bCnK9i8LX5X2Llrrq5-HNtiz5lzK/update/V1?value=90", true);
              xhttp.send();
            }
            function loadDocOf() {
              var xhttp = new XMLHttpRequest();
              xhttp.open("POST", "http://188.166.206.43/Nn5bX0xhM-WommNXm_C2Z7p8TWZSVLNY/update/D16?value=1", true);
              xhttp.send();
            }
            loadDocOn();
    </script>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
    <script src="assets/js/stylish-portfolio.js"></script>
</body>

</html>