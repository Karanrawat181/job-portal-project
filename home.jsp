<html>
    
    <head>
        
        <title>
           jobportal
        </title>
      
         <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="newcss.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">   
    <script src="js/bootstrap.min.js"> </script>
<script src="js/jquery-3.4.1.min.js"> </script>
  <script src="js/bootstrap.bundle.js"> </script>
        
    </head>
    <style>
      
        .navbar-inverse{
            background-color: green;
            padding: 8px;
            font-size: 17px;
            
        }
        .navbar-nav{
            padding: 0 0 0 20px;
        }
        .navbar-right{
            margin-right: 100px;
        }
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
  
       <nav class="navbar navbar-expand-sm navbar-light bg-success">
          <div class="container-fluid">
          <div class="navbar-header">
              <a class="navbar-brand" href="#">jobportal</a></div>
          
             
             <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"  class="nav-link text-dark"> Hi!Guest</a></li>
                   
                     <li><a href="signup.jsp" class="nav-link text-dark" > Sign up</a></li>
                     
               <li class="nav-item dropdown">
                   <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                       LOGIN
                   </a>
                           
                          <div class="dropdown-menu" aria-labelledby="navbarDropdown" >
                              <a class="dropdown-item" href="adminlogin.jsp" class="bg-primary">admin</a>
                             <a class="dropdown-item" href="emplogin.jsp">employee</a>  
                               <a class="dropdown-item" href="reclogin.jsp">recruiter</a>
                          
                          </div>
               </li>
             </ul>
                      </div>
                
       </nav>
        <img src="01-workspace.jpg" hight="100%" width="100%">
        <h1 class="header">
            welcome to job portal
        </h1>
           </body>
</html>
