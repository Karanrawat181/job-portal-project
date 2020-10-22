<%@page import="java.sql.*"%>

<html>
    <head>
        
        <title>
           Job Portal
        </title>
      
         <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="newcss.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet" >   
    <script src="js/bootstrap.min.js"> </script>
      <script src="js/jquery-3.4.1.min.js"></script>
        
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
                   <a href="myprofile.jsp" class="nav-link text-dark" >My Profile</a>
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
              My Profile
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
                
                <form class="form-horizontal" action="uprofile" method="post">
                           
   <%
   
try{
    String b=(String)session.getAttribute("d");
     String j=(String)session.getAttribute("c");
      String k=(String)session.getAttribute("l");
      if(k!=null){
    Class.forName("com.mysql.jdbc.Driver");
    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal", "root", "");
   Statement st=con.createStatement();
    String data="select * from emp where loginid='"+k+"'";
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
                        <input type="text" value='<%= rs.getString("loginid")%>' name="email" class="form-control">                  
                      </div>
           
            </div>
                        <div class="form-group row">
                    <lable class="col-form-label col-sm-2" for="password"> Password-</lable>   
                    <div class=" col-sm-6">
                        <input type="text" value='<%= rs.getString("password")%>' name="password" class="form-control" >                  
                      </div>
           
            </div>
                        <div class="form-group row">
                    <lable class="col-form-label col-sm-2" for="gender"> Gender-</lable>   
                    <div class=" col-sm-6">
                        <input type="text" value='<%= rs.getString("gender")%>' name="gender"  class="form-control">                  
                      </div>
           
            </div>
                        <div class="form-group row">
                    <lable class="col-form-label col-sm-2" for="mobileno">Mobile No-</lable>   
                    <div class=" col-sm-6">
                        <input type="text" value='<%= rs.getString("mobileno")%>' name="mobileno" class="form-control">                  
                      </div>
           
            </div>
                        <div class="form-group row">
                    <lable class="col-form-label col-sm-2" for="role"></lable>   
                    <div class=" col-sm-6">
                        <input type="hidden" value='<%= rs.getString("role")%>' name="roles" class="form-control" >                  
                      </div>
           
            </div>
                       
                    <div class="card-footer text-center">
                    <button type="submit" class="btn btn-primary" value="" >Save</button>
                    </div>
   
   <%
   }
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

