<%@page import="java.sql.*"%>


<%
    
String a= request.getParameter("companyname");
String b=request.getParameter("language");
String c=request.getParameter("description");
String d=request.getParameter("mobileno");
String e=request.getParameter("date");
String j=request.getParameter("fname");
String l=request.getParameter("postby");
String x= request.getParameter("id");
if(a!=null && b!=null && c!=null && d!=null && e!=null && j!=null && l!=null )
   
    
{
       

              
      Class.forName("com.mysql.jdbc.Driver");
    Connection con1= DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal", "root", "");  
 String query="insert into applyjob(cname,lang,uname,description,mobileno,adate,post_by)values(?,?,?,?,?,?,?)";
  PreparedStatement stmt = con1.prepareStatement(query);
        stmt.setString(1, a);
            stmt.setString(2,b);
            stmt.setString(3,j);
            stmt.setString(4,c);
                        stmt.setString(5,d);
                                    stmt.setString(6,e);
                                      stmt.setString(7,l);
            stmt.executeUpdate();
  session.setAttribute("q", "successfully applied");
      
    response.sendRedirect("apply.jsp");
    
}  
       
%>