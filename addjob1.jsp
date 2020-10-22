<%@page import="java.sql.*"%>

<%  
    
String name=request.getParameter("companyname");
String language= request.getParameter("language");
String adate= request.getParameter("date");
String add= request.getParameter("address");
String descr= request.getParameter("description");
      String w=(String)session.getAttribute("c");

try{
    
       Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal", "root", "");
     Statement st=con.createStatement();
     String sql="insert into addcomp(cname,lang,date,address,description,post_by)values('"+name+"','"+language+"','"+adate+"','"+add+"','"+descr+"','"+w+"')";
     st.executeUpdate(sql);
     response.sendRedirect("addjob.jsp");
     session.setAttribute("f", "added successfully");
}catch(Exception e){
    out.print(e);
}

%>