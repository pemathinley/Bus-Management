<%-- 
    Document   : admin1
    Created on : Mar 31, 2019, 12:13:01 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
    
    <link rel="stylesheet" href="css/admin1.css" type="text/css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"  crossorigin="anonymous">
        <script type="text/javascript" src="js/admin.js"></script>
        
    
</head>

    <body>
        
    <div id="header">
        
             <img src="image/admin.png" alt="adminlogo" id="adminlogo">
           
           
            
            <span id="intro">
            <p>
            <% String n = (String)request.getSession().getAttribute("name");%>
                    Name : <%=n%>
            </p>
            <p>
            <% String id = (String)request.getSession().getAttribute("uid");%>
                    User ID : <%=id%>
            </p>
            <p>
                    <% String acctype = (String)request.getSession().getAttribute("type");%>
                    Account Type : <%=acctype%>
            </p>
            
        </span>
        
        
        
        </div>
    
        
        <div id="sidebar">
        
            
        <ul class="ulist">
            
            <li><a href="admin1.jsp"><i class="fas fa-home"></i>&nbsp;&nbsp;Dashboard</a></li>
            <li><a href="admin1.jsp"><i class="far fa-address-card"></i>&nbsp;&nbsp;Staff</a></li>
            <li><a href="admin1.jsp"><i class="fas fa-bus"></i>&nbsp;&nbsp;Driver</a></li>
            <li><a href="admin1.jsp"><i class="fas fa-user-graduate"></i>&nbsp;&nbsp;Student</a></li>
            <li><a href="admin1.jsp"><i class="fas fa-map-marked-alt"></i>&nbsp;&nbsp;Routes</a></li>
            <li><a href="login.jsp"><i class="fas fa-sign-out-alt"></i>&nbsp;&nbsp;Sign out</a></li>
        </ul>
        </div>
        
        
        <div id="data">
      
             <div class="bar">
                <ul class="ulist1">
                    <li><a href="admin1.jsp"><i class="far fa-eye"></i> &nbsp;&nbsp;View</a></li>
                    <li>
                        <a href="add.jsp"><i class="far fa-plus-square"></i>&nbsp;&nbsp;                       
                            Add</a>
                    </li>
                    <li><a href="delete.jsp"><i class="far fa-trash-alt"></i>&nbsp;&nbsp;Delete</a></li>
                    <li><a href="update.jsp"><i class="far fa-edit"></i>&nbsp;&nbsp;Update</a></li>
                    
                
                </ul>
                 
            
            </div>
            <center>
            <iframe width="1000" height="650" src="https://maphub.net/embed/53071?panel=1" frameborder="0" align="middle"></iframe>
            </center>    
        </div>

        
        </div>
          
    </body>
</html>

