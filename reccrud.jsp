<%@page import="java.sql.*"%>




<html>
    <head>
        
        <title>
           jobportal
        </title>
      
         <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="newcss.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet" >   
    <script src="js/bootstrap.min.js"> </script>
      <script src="js/jquery-1.11.1.min.js"></script>
        
    </head>

    <body>
       <nav class="navbar navbar-expand-lg navbar-inverse navbar-light bg-success">
            <div class="container-fluid">
                <ul class="navbar-nav">    
            <a href="#"   class="navbar-brand text-dark"> JOBPORTAL </a>
              
               <li class="nav-item">
                   <a href="mainpage.jsp" class="nav-link text-dark" >Home</a>
               </li>
              
               <li class="nav-item">
                   <a href="usertable.jsp" class="nav-link text-dark" >User List</a>
               </li>
               <li class="nav-item">
                   <a href="rectable.jsp" class="nav-link text-dark" >Recruiter List</a>
               </li>
          <li class="nav-item">
                   <a href="#" class="nav-link text-dark" >My Profile</a>
               </li>
         
           </ul>
             <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"  class="nav-link text-dark"> Hi! <%
                        String u=(String)session.getAttribute("c");
                        String r=(String)session.getAttribute("d");
Object o = u,p=r;                     
if(o!=null && p!=null){
    
    out.print(o);
out.print("(");
    out.print(p);
   out.print(")");
   
}
else{
    out.println("guest");
}

%>
                        </a></li>
                    
                  <li><a href="home.jsp"  class="nav-link text-dark"> logout</a></li>
             </ul>  
            </div>
        </nav>
  <div class="container">
      
        <div class="card">
            <div class="card-header bg-light">
               Edit Job
                 <p><%  String x=(String)session.getAttribute("f");
                
                Object y = x;
                if(y!=null){
                    
                    out.println(y);
                        session.removeAttribute("f");
                }
              
                
                %></p>
            </div>
           
              <div class="card-body">
         
        <form  lass="form-horizontal" action="" method="post">
             
   <%
   
try{
   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal", "root", "");
    String t =request.getParameter("u");
    int num=Integer.parseInt(t);
   Statement st=con.createStatement();
    String data="select * from recdata where id='"+num+"'";
    ResultSet rs = st.executeQuery(data);
    
    while(rs.next()){
        

   %>
   
        
     <div class="form-group row">
                    <lable class="col-form-label col-sm-2" for="id"> </lable>   
                    <div class=" col-sm-6">
                        <input type="hidden" value='<%= rs.getString("id")%>' name="id" class="form-control">                  
                      </div>
     </div>
                  
                      <div class="form-group row">
                    <lable class="col-form-label col-sm-2" for="fname"> Fname-</lable>   
                    <div class=" col-sm-6">
                        <input type="text" value='<%= rs.getString("fname")%>' name="fname" class="form-control" >                  
                      </div>
                      </div>
           
           
            
                        <div class="form-group row">
                    <lable class="col-form-label col-sm-2" for="lname"> Lname-</lable>   
                    <div class=" col-sm-6">
                        <input type="text" value='<%= rs.getString("lname")%>' name="lname" class="form-control" >                  
                      </div>
           
            </div>
                   
                        <div class="form-group row">
                    <lable class="col-form-label col-sm-2" for="email"> Email-</lable>   
                    <div class=" col-sm-6">
                        <input type="text" value='<%= rs.getString("login_id")%>' name="email" class="form-control">                  
                      </div>
           
            </div>
                        <div class="form-group row">
                    <lable class="col-form-label col-sm-2" for="gender">Gender</lable>   
                    <div class=" col-sm-6">
                        <input type="text" value='<%= rs.getString("gender")%>' name="gender" class="form-control" >                  
                      </div>
           
            </div>
                        <div class="form-group row">
                    <lable class="col-form-label col-sm-2" for="mmobileno">Mobile No</lable>   
                    <div class=" col-sm-6">
                        <input type="text" value='<%= rs.getString("mobileno")%>' name="mobileno"  class="form-control">                  
                      </div>
           
            </div>
                                     
          
                    <button type="submit" class="btn btn-primary" value="" >Save</button>
                    
   
    <%  
        
        } 
   

String a= request.getParameter("id");
String b=request.getParameter("fname");
String c=request.getParameter("lname");
String d=request.getParameter("email");
String e=request.getParameter("gender");
String f=request.getParameter("mobileno");
       
    if( a!=null && b!=null && c!=null && d!=null && e!=null && f!=null ){
        
        
      Class.forName("com.mysql.jdbc.Driver");
    Connection con1= DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal", "root", ""); 
   
    String query="update recdata set fname=?,lname=?,login_id=?,gender=?,mobileno=? where id='"+a+"'";
        PreparedStatement stmt= con1.prepareStatement(query);
   
        stmt.setString(1,b);
       stmt.setString(2,c);
        stmt.setString(3,d);
        stmt.setString(4,e);
       stmt.setString(5, f);
       stmt.executeUpdate();
      
    response.sendRedirect("rectable.jsp");
     
    }
   
}catch(Exception e)
{
    out.print(e);
    
}

%>
        </form>
              </div>
 
                </div>
            </div>
        
        
</body>
</html>
