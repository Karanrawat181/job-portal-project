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
                   <a href="reclog.jsp" class="nav-link text-dark" >Home</a>
               </li>
               <li class="nav-item">
                   <a href="addjob.jsp" class="nav-link text-dark">Add Job</a>
               </li>
               <li class="nav-item">
                   <a href="usertable.jsp" class="nav-link text-dark" >Job List</a>
               </li>
               <li class="nav-item">
                   <a href="applyjoblist.jsp" class="nav-link text-dark" > Apply Job List</a>
               </li>
          <li class="nav-item">
                   <a href="recmyprofile.jsp" class="nav-link text-dark" >My Profile</a>
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
  
     <h1 class="header">
            welcome to job portal
        </h1>
        
    </body>
    
</html>