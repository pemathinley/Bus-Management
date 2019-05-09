<%-- 
    Document   : Signup
    Created on : Mar 28, 2019, 3:00:20 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<link rel="stylesheet" type="text/css" href="css/signup.css">
    </head>
<body>
    
   
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

    <div class="loginbox">
    
<img src="image/bus.svg" class="logo">
    
<form name="MyForm" action="SignUpServlet1" method ="post" onsubmit="return myValidation()">
    <p>First Name</p>

    <input type="text" name="fn" placeholder="Enter First Name">
        
    <p> Last Name</p>
    
    <input type="text" name="ln" placeholder="Enter Last Name">
    
    <p> Password</p>
    
    <input type="password" name="pwd" placeholder="Enter Password">
    
    <p> D.O.B</p>
    <input type="date" name="dob">
    
    <p>Phone Number</p>
    <input type="text" name="pnum" placeholder="Enter Phone Number">
    
    <p>Id</p>
    <input type="number" name="id" placeholder="Enter Id">
    
    <p>User Type</p>
    
    <select class="options" name="type"> 
    <option value=""> ----- </option>
    <option value="Student">Student </option>
    <option value="Staff">Staff </option>
    <option value="Admin"> Admin </option>
    </select>
    
    <br>
    <br>
    <input type="submit" value="Submit">
    
    
    </form>
    </div>

        
    
</body>
</html>


