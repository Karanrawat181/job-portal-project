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
          <script src="js/bootstrap.bundle.js"> </script>
    </head>
    <script>
        
          
    
function validate() {

var a = document.forms["form"]["firstname"].value;
var b = document.forms["form"]["lastname"].value;
var c = document.forms["form"]["email"].value;
var d = document.forms["form"]["gender"].value;

var e = document.forms["form"]["mobileno"].value;

if( a === "")
{
    alert("firstname must be filled");
    return false;
}

else if(b === "")
{
    alert("lastname must be filled");
        return false;
}
else if(c === "")
{
    alert("email must be filled");
        return false;
}
else if(d === "")
{
    alert("gender  must be filled");
        return false;
}
else if(e===""){
    
     alert("mobile no must be filled");
}


else{
    
    alert("done");
    
}

}
        
        
        
        
        
        </script>
  
    <body>
        
        <nav class="navbar navbar-expand-sm navbar-inverse navbar-light bg-success">
               <div class="container-fluid">
             
            <a href="#"   class="navbar-brand text-dark"> JOBPORTAL </a>

      
            <ul class="nav navbar-nav navbar-right">
                  
                           
               <li class="nav-item dropdown">
                   <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                       LOGIN
                   </a>
                           
                          <div class="dropdown-menu" aria-labelledby="navbarDropdown" >
                              <a class="dropdown-item" href="adminlogin.jsp" class="bg-primary">admin</a>
                             <a class="dropdown-item" href="emplogin.jsp">employee</a>  
                               <a class="dropdown-item" href="reclogin.jsp">recruiter</a>
                          
                          
                          </div>         
            </ul> 
        </nav>
        <div class="container">
         
        <div class="card">
            <div class="card-header bg-light">
                Sign up</br>
              <p> 
               <%
                                            
                                            String data=(String)session.getAttribute("a");
                                            Object o=data;
                                            if(o!=null){
                                            out.print(o);
                                            session.removeAttribute("a");
                                            }                                           
                                            %>
              </p>
            </div>
              <div class="card-body">
                  
        <form action="signin.jsp" method="post" class="main-form" id="form">
            <div class="row">
                
                <div class="col">
             <div class="form-group">
            <lable for="firstname">FIRSTNAME</lable>
            <input type="text" name="firstname" id="first" class="form-control">
            </div>
                </div>
               <div class="col">
             <div class="form-group">
            <lable for="lastname">LASTNAME</lable>
            <input type="text" name="lastname" id="last" class="form-control">
            </div>
                   </div>
            </div>
            <div class="form-group">
            <lable for="email">login id</lable>
            <input type="text" name="email" id="user" class="form-control">
            </div>
               <div class="form-group">
              <lable for="password">PASSWORD</lable>
                        <input type="password" name="password" id="pass" class="form-control">
               </div>
               <div class="form-group">
                            <lable for="gender">GENDER</lable>
                        <select name="gender" id="gen" class="form-control">
                            
                            <option value="male"> male</option>
                             <option value="female"> female</option>
                        </select>
               </div>
             <div class="form-group">
            <lable for="mobileno">mobile no </lable>
            <input type="text" name="mobileno" id="user" class="form-control">
            </div>
                            
                              <div class="form-group">
            <div class="form-group">
                            <lable for="role">role</lable>
                        <select name="role" id="role" class="form-control">
                            
                           
                             <option value="Recruiter">Recruiter</option>
                               <option value="Employee"> Employee</option>
                        </select>
               </div>
                                  
                                  <input type="checkbox" id="accept-term">
                            <label for="accept-terms">Accept terms & condition</label></br>
                           
                            <button type="submit" onclick="return validate()" class="btn btn-primary" >Submit</button>
        </form>
              </div>
            
            </div>
        </div>
        </div>
    </body>
        
    </body>
    
</html>