<html>
<title>
	Book a room
</title>
<body>

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
        String phone = session.getAttribute("phone").toString();
        String email = session.getAttribute("userName").toString();
        String sql1="SELECT * FROM `room` WHERE ava = 'Y' ORDER BY 'roomno' LIMIT 1";
        rs1 = st1.executeQuery(sql1);
        String roomNo="";
        while(rs1.next()){
		
			
				roomNo = rs1.getString(1);
				int random=(int)(Math.random()*10000);
				int i=st2.executeUpdate("insert into book values ('"+phone+"','"+email+"','"+chkin+"','"+chkout+"','"+noPer+"','"+roomNo+"','"+random+"')");
				int k=st3.executeUpdate("update room set ava='N' where roomno='"+roomNo+"'");
				
			}
				
				
				
			
        }
		response.sendRedirect("index.jsp");

    }

%>
</body>
</html>