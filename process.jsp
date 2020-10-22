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
    
    <style>
        
         .header{
            color: black;
            margin: 0;
            padding: 0;
          text-align: center;
     position: absolute;
            
     top: 50%;
     left: 50%;
     transform: translate(-50%);
        }
        
        </style>
    <body>
        
        <nav class="navbar navbar-expand-lg navbar-inverse navbar-light bg-success">
            <div class="container-fluid">
                <ul class="navbar-nav">    
            <a href="#"   class="navbar-brand text-dark"> JOBPORTAL </a>
              
               <li class="nav-item">
                   <a href="userlog.jsp" class="nav-link text-dark" >Home</a>
               </li>
             
               <li class="nav-item">
                   <a href="userjob.jsp" class="nav-link text-dark" >Job List</a>
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
               Apply For Job
               <p>
                  <%
                      String v=(String)session.getAttribute("q");
                  Object z=v;
                  if(z!=null){
                  
                  out.print(z);
                  session.removeAttribute("q");
                  }
                  
                  %>
               </p>
              </div>
            <div class="card-body">
                
                <form class="form-horizontal" action="check.jsp" method="post">
                           
   <%
   
try{
     String j=(String)session.getAttribute("c");
      String t =request.getParameter("x");
    int num=Integer.parseInt(t);
    Class.forName("com.mysql.jdbc.Driver");
    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal", "root", "");
   
   Statement st=con.createStatement();
    String data="select * from addcomp inner join emp where addcomp.id='"+num+"' and emp.fname='"+j+"'";
    ResultSet rs = st.executeQuery(data);
    
    while(rs.next())
    {

   %>
   
     <div class="form-group row">
                    <lable class="col-form-label col-sm-2" for="id"> </lable>   
                    <div class=" col-sm-10">
                        <input type="hidden" value='<%= rs.getString("id")%>' name="id" class="form-group border-0">                  
                      </div>
     </div>
                    
                      <div class="form-group row">
                    <lable class="col-form-label col-sm-2" for="companyname"> Company Name-</lable>   
                    <div class=" col-sm-10">
                        <input type="text" value='<%= rs.getString("cname")%>' name="companyname" class="form-group border-0">                  
                      </div>
           
            </div>
                        <div class="form-group row">
                    <lable class="col-form-label col-sm-2" for="language"> Language-</lable>   
                    <div class=" col-sm-10">
                        <input type="text" value='<%= rs.getString("lang")%>' name="language" class="form-group border-0">                  
                      </div>
           
            </div>
                        <div class="form-group row">
                    <lable class="col-form-label col-sm-2" for="postby"> Post By-</lable>   
                    <div class=" col-sm-10">
                        <input type="text" value='<%= rs.getString("post_by")%>' name="postby" class="form-group border-0">                  
                      </div>
           
            </div>
                        <div class="form-group row">
                    <lable class="col-form-label col-sm-2" for="date"> Post Date-</lable>   
                    <div class=" col-sm-10">
                        <input type="text" value='<%= rs.getString("date")%>' name="date" class="form-group border-0">                  
                      </div>
           
            </div>
                        <div class="form-group row">
                    <lable class="col-form-label col-sm-2" for="address"> Company Address-</lable>   
                    <div class=" col-sm-10">
                        <input type="text" value='<%= rs.getString("address")%>' name="address" class="form-group border-0">                  
                      </div>
           
            </div>
                        <div class="form-group row">
                    <lable class="col-form-label col-sm-2" for="description"> Description-</lable>   
                    <div class=" col-sm-10">
                        <input type="text" value='<%= rs.getString("description")%>' name="description" class="form-group border-0">                  
                      </div>
           
            </div>
                      
                      <div class="form-group row">
                    <lable class="col-form-label col-sm-2" for="mobileno"></lable>   
                    <div class=" col-sm-10">
                        <input type="hidden" value='<%= rs.getString("mobileno")%>' name="mobileno" class="form-group border-0">                  
                      </div>
           
            </div>
                      
                        <div class="form-group row">
                    <lable class="col-form-label col-sm-2" for="fname"> </lable>   
                    <div class=" col-sm-10">
                        <input type="hidden" value='<%= rs.getString("fname")%>' name="fname" class="form-group border-0">                  
                      </div>
           
            </div>
                    <div class="card-footer text-center">
                    <button type="submit" class="btn btn-primary" value="" >Process</button>
                    </div>
   
   <%
            
   
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
