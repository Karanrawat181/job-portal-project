<%@page import="java.sql.*"%>


   
<%
       
    String id=request.getParameter("id");
     String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    
 String loginid=request.getParameter("email");
   String gen=request.getParameter("gender");
   String mobileno=request.getParameter("mobileno");
    String pass= request.getParameter("password");
      String roles= request.getParameter("roles");
   
      
   try
    {
       
       
      Class.forName("com.mysql.jdbc.Driver");
    Connection con1= DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal", "root", ""); 
   
    String query="update recdata set fname=?,lname=?,login_id=?,gender=?,mobileno=?,password=? where id='"+id+"'";
        PreparedStatement stmt= con1.prepareStatement(query);
   
        stmt.setString(1,fname);
       stmt.setString(2,lname);
        stmt.setString(3,loginid);
        stmt.setString(4,gen);
       stmt.setString(5, mobileno);
              stmt.setString(6,pass);
       stmt.executeUpdate();
      
    response.sendRedirect("recmyprofile.jsp");
    session.setAttribute("q","succesfully saved");
      con1.close();
      
    }
   catch(Exception e){
       
       out.println(e);
   }
   
%>
