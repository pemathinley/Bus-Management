
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<link rel="stylesheet" type="text/css" href="css/login.css">
    </head>
<body>
    
   
    <script>
    
     function myValidation()
            {
                
                var name = document.forms["MyForm"]["user"].value;
                var password = document.forms["MyForm"]["pass"].value;
               
                
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
                  
                    
               
                
                
                
            }
    
    </script>

        
<div class="loginbox">
<img src="image/bus.svg" class="logo">
    
    <h1>Login </h1>
<form name="MyForm" action="LoginServlet" method ="post" onsubmit="return myValidation()">
<p>Username</p>
<input type="text" name="user" placeholder="Enter Id">
<p> Password</p>
<input type="password" name="pass" placeholder="Enter Password">
<p> Account Type</p>
<select class="options" name="type"> 
    <option value=""> ----- </option>
    <option value="Student">Student </option>
    <option value="Staff">Staff </option>
    <option value="Admin"> Admin </option>
    </select>
    <br>
    <br>
    <input type="submit" value="Login">

    <a href="Signup.jsp">Forgot your password?</a>
    <br>
    
    </form>
    </div>
    
</body>
</html>


