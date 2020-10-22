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
                   <a href="usertable.jsp" class="nav-link text-dark" >Job List</a>
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
               Job List
              </div>
      
            <table class="card-table table">
                <thead><tr>
                        <th scope="col">S.No</th>
                        <th scope="col">Company Name</th>
                        <th scope="col">Language</th>
                        <th scope="col">Post Date</th>
                        <th scope="col">Post By</th>
                        <th scope="col">Description</th>
                       <th scope="col">Address</th>
                       <th scope="col">Action</th>
                    
                    </tr>
                </thead>
                
                <tbody>
                    <%
                  
         try{
             
      Class.forName("com.mysql.jdbc.Driver");
          Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal", "root", "");
   Statement st=con1.createStatement();
    String data="select * from addcomp";
    ResultSet rs = st.executeQuery(data);
    
    while(rs.next()){
       %>
       <tr>
           <td><%= rs.getString("id")%></td>
           <td><%= rs.getString("cname")%></td>
            <td><%= rs.getString("lang")%></td>
             <td><%= rs.getString("date")%></td>
              <td><%= rs.getString("post_by")%></td>
               <td><%= rs.getString("description")%></td>
                <td><%= rs.getString("address")%></td>
                <td> <a href= 'process.jsp?x=<%= rs.getString("id") %>' class="btn btn-primary" role="button">Apply</a>
                </td>
          
           
           
       </tr>
                    
                    
                    
                    
                </tbody>
                
      <%
       
            
            }
     
      }catch(Exception e){
                  
          out.println(e);    
              } 
     %> 
                
                
            </table>            
       
            
            
            
        </div>
      </div>

    </body>
    
</html>