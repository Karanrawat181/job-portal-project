<%@page import="java.sql.*"%>


<%
   String fname=request.getParameter("firstname");
    String lname=request.getParameter("lastname");
    
   String loginid=request.getParameter("email");
   String gen=request.getParameter("gender");
   String mobileno=request.getParameter("mobileno");
   String role= request.getParameter("role");
   
   if(role=="Recruiter"){
try{
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal", "root", "");
     Statement st=con.createStatement();
     String sql="insert into recdata(fname,lname,login_id,gender,mobileno,)values('"+fname+"','"+lname+"','"+loginid+"','"+gen+"','"+mobileno+"','"+role+"')";
     st.executeUpdate(sql);
     response.sendRedirect("addrec.jsp");
            session.setAttribute("c","successfully inserted");
    
}catch(Exception e){
    
    out.println(e);
}
   }
   
   else if(role=="Employee")
   {
       
       try{
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal", "root", "");
     Statement st=con.createStatement();
     String sql="insert into emp(fname,lname,login_id,gender,mobileno,role)values('"+fname+"','"+lname+"','"+loginid+"','"+gen+"','"+mobileno+"','"+role+"')";
     st.executeUpdate(sql);
     response.sendRedirect("addrec.jsp");
            session.setAttribute("c","successfully inserted");
    
}catch(Exception e){
    
    out.println(e);
}
       
       
       
   }


%>