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

      <div class="container">
      
        <div class="card">
            <div class="card-header bg-light">
               Add Job
                 <p><%  String x=(String)session.getAttribute("f");
                
                Object y = x;
                if(y!=null){
                    
                    out.println(y);
                        session.removeAttribute("f");
                }
          
                %></p>
            </div>
           
              <div class="card-body">
         
        <form action="addjobe" method="post" class="main-form">
   
             <div class="form-group">
            <lable for="companyname">Company Name</lable>
          
            <input type="text" name="companyname" id="cname" placeholder="company name" class="form-control">
            </div>
      
             <div class="form-group">
            <lable for="language">Language</lable>
            <input type="text" name="language" id="lang" placeholder="language" class="form-control">
            </div>
                 
         
            <div class="form-group">
            <lable for="date">Date</lable>
            <input type="text" name="date" id="date" placeholder="date" class="form-control">
            </div>
               <div class="form-group">
              <lable for="address">Address</lable>
              <input type="text" name="address" id="add"  placeholder="address"class="form-control">
               </div>
          <div class="form-group">
              <lable for="description">Description</lable>
              
              <textarea name="description" id="des"  placeholder="description" class="form-control rounded-0" rows="3"></textarea>
               </div>
            
                            <button type="submit" class="btn btn-primary" >Save</button>
                          
        </form>
              </div>
 
                </div>
            </div>
        </div>
        
</body>
</html>