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
            <li><a href="Routes.jsp"><i class="fas fa-map-marked-alt"></i>&nbsp;&nbsp;Routes</a></li>
            <li><a href="logout.jsp"><i class="fas fa-sign-out-alt"></i>&nbsp;&nbsp;Sign out</a></li>
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
            
                        
<div class="view">
               
                    <div class="tab">
 <button class="tablinks" onclick="openTab(event, 'Staff');showStaff();">Staff data</button>
  <button class="tablinks" onclick="openTab(event, 'Driver');showDrivers();">Driver data</button>
  <button class="tablinks" onclick="openTab(event, 'Student');showStudent()">Student data</button>
  <button class="tablinks" onclick="openTab(event, 'Routes');showRoutes();">Routes</button>
  
</div>
    

<div id="Staff" class="tabcontent">
     
</div>

<div id="Driver" class="tabcontent">
    
  </div>
    
    <script>
        var req = new XMLHttpRequest();  
        function showDrivers()  
        {  
            var url="ViewDriver.jsp"; 

            try  
            {  
                req.onreadystatechange=getDriInfo;  
                req.open("POST",url,true);  
                req.send();  
            }  
            catch(e)  
            {  
            alert("Unable to connect to server");  
            }  
        }  

        function getDriInfo(){  
        if(req.readyState==4){  
        var val=req.responseText;  
        document.getElementById('Driver').innerHTML=val;  
        }  
        }  
        
        function showRoutes()  
        {  
            var url="ViewRoute.jsp"; 

            try  
            {  
                req.onreadystatechange=getRouInfo;  
                req.open("POST",url,true);  
                req.send();  
            }  
            catch(e)  
            {  
            alert("Unable to connect to server");  
            }  
        }  

        function getRouInfo(){  
        if(req.readyState==4){  
        var val=req.responseText;  
        document.getElementById('Routes').innerHTML=val;  
        }  
        } 
        
        function showStudent()  
        {  
            var url="view.jsp"; 

            try  
            {  
                req.onreadystatechange=getStuInfo;  
                req.open("POST",url,true);  
                req.send();  
            }  
            catch(e)  
            {  
            alert("Unable to connect to server");  
            }  
        }  

        function getStuInfo(){  
        if(req.readyState==4){  
        var val=req.responseText;  
        document.getElementById('Student').innerHTML=val;  
        }  
        }
        
        
        function showStaff()  
        {  
            var url="viewStaff.jsp"; 

            try  
            {  
                req.onreadystatechange=getStafInfo;  
                req.open("POST",url,true);  
                req.send();  
            }  
            catch(e)  
            {  
            alert("Unable to connect to server");  
            }  
        }  

        function getStafInfo(){  
        if(req.readyState==4){  
        var val=req.responseText;  
        document.getElementById('Staff').innerHTML=val;  
        }  
        }
    </script>

<div id="Student" class="tabcontent">
    
  
</div>
<div id="Routes" class="tabcontent">
       
  </div>
   </div>

        
     </div>
          
    </body>
</html>
