<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pwd");
    String name = request.getParameter("sname");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentlogin",
            "root", "root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into student(name, uname, pass) values ('" + name + "','" + user + "','" + pwd + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.html");
    }
%>
