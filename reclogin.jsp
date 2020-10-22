<%@page import="java.sql.*"%>


<html>
    <head>
        
        <title>
           job portal
        </title>
      
         <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="newcss.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet" >   
    <script src="js/bootstrap.min.js"> </script>
      <script src="js/jquery-3.4.1.min.js"></script>
        
    </head><script>
        
   
function validate() {

var a = document.forms["form"]["username"].value;
var b = document.forms["form"]["password"].value;


if( a === "")
{
    alert("username must be filled");
    return false;
}

else if(b === "")
{
    alert("password must be filled");
        return false;
}



}
       
        </script>
  
    <body>
           <nav class="navbar navbar-expand-lg navbar-inverse navbar-light bg-success">
            <div class="container-fluid">
                <ul class="navbar-nav">    
            <a href="#" class="navbar-brand text-dark"> JOB PORTAL </a>
                </ul>
            </div>
           </nav>
           <div class="container">
         
        <div class="card">
            <div class="card-header bg-light">
                Recruiter Login
                  <p><%
                
                String u=(String)session.getAttribute("r");
                Object o = u;
                if(o!=null){
                    out.println(o);
                        session.removeAttribute("r");
                }
                %>   </p>
            </div>
           
              <div class="card-body">
                  
        <form action="rec" method="post" class="main-form" id="form">
             <div class="form-group">
            <lable for="username">USERNAME</lable>
            <input type="text" name="username" id="user" class="form-control">
            </div>
               <div class="form-group">
              <lable for="password">PASSWORD</lable>
                        <input type="password" name="password" id="pass" class="form-control">
               </div>
            
            
             <button type="submit" class="btn btn-primary" onclick="return validate()" >Log in</button>
        </form>
              </div>
        </div>
           </div>
        
    </body>
</html >


