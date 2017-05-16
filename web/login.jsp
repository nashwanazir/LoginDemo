<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pwd");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentlogin",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from student where uname='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("uname", userid);
        out.println("Welcome " + userid+"!");
%>     
<br>
<br>
<a href='logout.jsp'>Log out</a>
<%    } 
    else {
        out.println("Invalid username/password");
%>
<br>
<br>
<a href='index.html'>try again</a>
<%
    }
%>
