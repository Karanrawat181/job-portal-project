<%@page import="java.sql.*"%>


<%
String rolen=request.getParameter("role");
 
if(rolen.equals("Recruiter")){
    
    String role=request.getParameter("role");
    String fname=request.getParameter("firstname");
     String lname=request.getParameter("lastname");
      String loginid=request.getParameter("email");
       String gender=request.getParameter("gender");
        String mobileno=request.getParameter("mobileno");
     
String pass=request.getParameter("password");

try{
      Class.forName("com.mysql.cj.jdbc.Driver");
           Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal", "root", "");
               Statement stmt=con1.createStatement();
             String sql="insert into recdata(fname,lname,login_id,gender,mobileno,role,password)values('"+fname+"','"+lname+"','"+loginid+"','"+gender+"','"+mobileno+"','"+role+"','"+pass+"')";
               stmt.executeUpdate(sql);
                      session.setAttribute("a","successfully sign up");
                   
             response.sendRedirect("signup.jsp");
  
      
             
}catch(Exception e){
    out.println(e);
}
         }

 
   else if(rolen.equals("Employee"))
   {
         String rolei=request.getParameter("role");
    String fname=request.getParameter("firstname");
     String lname=request.getParameter("lastname");
      String login=request.getParameter("email");
       String gen=request.getParameter("gender");
        String mobile=request.getParameter("mobileno");
     
String pass=request.getParameter("password");

       
       try{
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal", "root", "");
     Statement st=con.createStatement();
     String sql="insert into emp(fname,lname,loginid,gender,mobileno,role,password)values('"+fname+"','"+lname+"','"+login+"','"+gen+"','"+mobile+"','"+rolei+"','"+pass+"')";
          st.executeUpdate(sql);
            session.setAttribute("a","successfully inserted");
     response.sendRedirect("signup.jsp");
          
    
}catch(Exception e){
    
    out.println(e);
}
       
       
       
   }

%>
