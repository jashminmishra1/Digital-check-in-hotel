<html>
<head>
<title>NO OF ROOMS</title>
</head>
<style type="text/css">
body{
	background-image:url("book.jpeg");
	background-size:cover;
}
h1{
	position:absolute;
	left:28%;
	margin-top:200px;
}
.room1 h1{
	position:absolute;
	left:15%;
	margin-top:200px;
}
.banner-button1{
  width:21rem;
  margin-left:250px;
  margin-top:280px;
  padding:1.2rem 2rem;
  color:#333;
  letter-spacing:.1rem;
  border:none;
  outline:none;
  border-radius:10rem;
  background:linear-gradient(to right, gold, goldenrod);
  cursor:pointer;
  animation:anim 1s 1s backwards;
}
.banner-button1:hover{
  background:linear-gradient(to left, golden, goldenrod);
}
.banner-button1:active{
  transform:translatey(.2rem);
}
.banner-button2{
  width:21rem;
  margin-left:510px;
  margin-top:280px;
  padding:1.2rem 2rem;
  color:#333;
  letter-spacing:.1rem;
  border:none;
  outline:none;
  border-radius:10rem;
  background:linear-gradient(to right, gold, goldenrod);
  cursor:pointer;
  animation:anim 1s 1s backwards;
}
.banner-button2:hover{
  background:linear-gradient(to left, golden, goldenrod);
}
.banner-button2:active{
  transform:translatey(.2rem);
}
</style>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%! String userName; String userPsw; %>
<%
String chkin=(request.getParameter("date1"));
String chkout=(request.getParameter("date2"));
String noPer=(request.getParameter("Counts"));
int rooms=Integer.parseInt((request.getParameter("Rooms")));

Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","");
Statement st= con.createStatement();
Statement st1= con.createStatement();
Statement st2= con.createStatement();
Statement st3= con.createStatement();
ResultSet rs;
ResultSet rs1;
ResultSet rs2;
ResultSet rs3;
String sql="SELECT COUNT(*) FROM `room` WHERE ava = 'Y'";
rs = st.executeQuery(sql);
String Countrow="";
while(rs.next()){
    Countrow = rs.getString(1);
    int a = Integer.parseInt(Countrow);
    if(a >= rooms){
        
        String sql1="SELECT * FROM `room` WHERE ava = 'Y' ORDER BY 'roomno'";
        rs1 = st1.executeQuery(sql1);
		rs1.last();
        int room=rs1.getRow();
		%>
		<div class="room">
		<h1><i>WOHOOO!! THERE ARE TOTAL OF <%out.println(room);%> ROOMS.</i></h1>
		<button onclick="location.href='bookroom.html'" class="banner-button1">BOOK A ROOM</button>
	  <button onclick="location.href = 'front.html'" class="banner-button1">BACK TO PAGE</button>
		</div>
		<%
	}
	else{
		%>
		<div class="room1">
		<h1>WE ARE SORRY, RIGHT NOW THERE ARE NO ROOMS AVAILABLE.</h1>
		<button onclick="location.href = 'front.html'" class="banner-button2">BACK TO PAGE</button>
		</div>
		
		<%
	}
		

    
}
%>

</body>
</html>