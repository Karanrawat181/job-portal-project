<%@page import ="java.sql.* " %>
<%
 
    String id= request.getParameter("v");
    int num=Integer.parseInt(id);
    
try{
 
    Class.forName("com.mysql.jdbc.Driver");
    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","");
    Statement st=con.createStatement();
    st.executeUpdate("delete from addcomp where id='"+num+"'");
    response.sendRedirect("usertable.jsp");
    
}catch(Exception e){
    
    
    out.print(e);
}

%>