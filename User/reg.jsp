<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<html>
<head>
	<script>
		function notValid(){
			//alert("Enter All The Details");
			//location.replace("first.html");
		}
	</script>
</head>
<body>
<%
String email=request.getParameter("email");
String passsword=request.getParameter("password");
String passsword1=request.getParameter("password1");
String phone=request.getParameter("phone");
if(!(email.equals(null) || email.equals("")) && !(passsword.equals(null) || passsword.equals("")) && !(passsword1.equals(null) || passsword1.equals("")) && (passsword.equals(passsword1)))
	{

			try{


					Class.forName("com.mysql.jdbc.Driver");
					java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","");
					Statement st= con.createStatement();
					ResultSet rs;
					int i=st.executeUpdate("insert into users values ('"+email+"','"+passsword+"','"+phone+"')");
					response.sendRedirect("login.html");
				}
				catch(Exception sq){

			}
		
		}
		else
		{

			%>
			<script>
				notValid();
			</script>
			<%

		}


%>
</body>
</html>