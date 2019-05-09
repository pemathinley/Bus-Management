<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
        
    <link rel="stylesheet" type="text/css" href="css/form1.css">    
    <link rel="stylesheet" type="text/css" href="css/form.css">
    <link rel="stylesheet" href="css/add.css" type="text/css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"  crossorigin="anonymous">
    <script type="text/javascript" src="js/admin.js"></script>    
    
      <script>
    
     function myValidation()
            {
                
                var name = document.forms["MyForm"]["user"].value;
                var password = document.forms["MyForm"]["pass"].value;
                var pno= document.forms["MyForm"]["num"].value;
                
                
                
                
                
                var  flag = true;
               
                
                if(name == "")
                    {
                        alert("name cannot be empty");
                        flag = false;
                    }
                
                if(password == "")
                    {
                        alert("password cannot be empty");
                        flag = false;
                        
                    }
                
                  
                if((pno >='a' && pno <='z')||(pno >='A' && pno <='Z')) 
                    {
                        alert("Phone number should be numbers only");
                        flag = false;
                        
                    }
                
                }
    
    </script>
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
        <br>
            
        <ul class="ulist">
            
            <li><a href="admin1.jsp"><i class="fas fa-home"></i>&nbsp;&nbsp;Dashboard</a></li>
            <li><a href="admin1.jsp"><i class="far fa-address-card"></i>&nbsp;&nbsp;Staff</a></li>
            <li><a href="admin1.jsp"><i class="fas fa-bus"></i>&nbsp;&nbsp;Driver</a></li>
            <li><a href="admin1.jsp"><i class="fas fa-user-graduate"></i>&nbsp;&nbsp;Student</a></li>
            <li><a href="Routes.jsp"><i class="fas fa-map-marked-alt"></i>&nbsp;&nbsp;Routes</a></li>
            
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
            
                        
<div class="view">
                <div class="tab">

  <button class="tablinks" onclick="openTab(event, 'Driver')">Driver data</button>
  <button class="tablinks" onclick="openTab(event, 'Routes')">Routes</button>
  
</div>
    
<div id="Driver" class="tabcontent">
    <center><h1>Driver</h1></center>
    
    <div class="form1">
            <form  name="MyForm" action="DriverServlet" method ="post"  onsubmit="return myValidation()">
                <p>First Name</p>
                <input type="text" name="fn" placeholder="Enter First Name">
                <p> Last Name</p>
                <input type="text" name="ln" placeholder="Enter Last Name">
                <p> D.O.B</p>
                <input type="date" name="dob" >
                <p>Phone Number</p>
                <input type="text" name="pnum" placeholder="Enter Phone Number">
                <p>Id</p>
                <input type="number" name="id" placeholder="Enter Id">
                <p>Bus Number</p>
                <input type="text" name="bnum" placeholder="Enter Bus Number"><br><br>
                <input type="submit" name="sb" value="Submit">
            </form>
    </div>
</div>


<div id="Routes" class="tabcontent">
    <center><h1>Routes</h1></center>
    
    <div class="form2">
    

    
<form name="MyForm" action="RoutesServlet1" method ="post" onsubmit="return myValidation()">
    <p>Drivers Name</p>

    <input type="text" name="fn" placeholder="Enter Driver's Name">
        
    <p> Starting Point</p>
    
    <input type="text" name="sp" placeholder="Enter Starting point of Route">
    
        
    <p>End Point</p>
    <input type="text" name="ep" placeholder="Enter End point of Route" >
    
    <p>Id</p>
    <input type="text" name="id" placeholder="Enter Id"> 
    
    <p>Bus Number</p>
    <input type="text" name="bnum" placeholder="Enter Bus Number">
    
    <br>
    <br>
    <input type="submit" name="" value="Submit">
    
    
    </form>
    </div>

    

  </div>

            
            </div>

        
        </div>
    </body>
</html>