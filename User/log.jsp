<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<html>
<head>
	<script>
		function notValid(){
			alert("Enter All The Details");
			location.replace("front.html");
		}
	</script>
</head>
<body>
	<%! String userName; String userPsw; String phone;%>
<%
String email=request.getParameter("email");
String passsword=request.getParameter("password");
if((!(email.equals(null) || email.equals("")) && !(passsword.equals(null) || passsword.equals(""))))
	{

			try{

					Class.forName("com.mysql.jdbc.Driver");
					java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","");
					out.println(email);
					Statement st= con.createStatement();
					ResultSet rs;
					String sql="select * from users where email='"+email+"' and password = '"+passsword+"'";
					rs = st.executeQuery(sql);
					
					
					while(rs.next())
					{ 
						userName = rs.getString("email");
						userPsw = rs.getString("password");
						phone = rs.getString("phone");
						session.setAttribute("phone", phone);
						session.setAttribute("userName", userName);
						if(email.equals(userName) && passsword.equals(userPsw))
						{
							response.sendRedirect("book.html");
						} 
						else
						{
							%>
								<script>
									notValid();
								</script>
							<%
						}
					}
					
				}
				catch(Exception sq){

			}	
		}
		

%>
</body>
</html>