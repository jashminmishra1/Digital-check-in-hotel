<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%! String phone; String pinn; %>
<%
String res = request.getParameter("decode");
String pin = request.getParameter("pin");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","");
Statement st= con.createStatement();
ResultSet rs;
String sql="select * from book WHERE phone='"+res+"' and pin = '"+pin+"'";
rs = st.executeQuery(sql);
while(rs.next())
{ 
    phone = rs.getString("phone");
    pinn = rs.getString("pin");
    session.setAttribute("phone", phone);
    if(res.equals(phone) && pin.equals(pinn))
    {
        response.sendRedirect("final/final.jsp");
    } 
    else
    {
        
    }
}

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <script>

    </script>
    
</body>
</html>