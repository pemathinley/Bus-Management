<%-- 
    Document   : staff
    Created on : Mar 28, 2019, 3:25:25 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/table.css">
    <link rel="stylesheet" type="text/css" href="css/staff.css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"  crossorigin="anonymous">
    <script>
                    var req = new XMLHttpRequest();  
                    function sendInfo()  
                    {  
                        var v=document.rform.start.value;  
                        var url="Searchbus.jsp?x="+v; 
                    
                        try  
                        {  
                            req.onreadystatechange=getInfo;  
                            req.open("POST",url,true);  
                            req.send();  
                        }  
                        catch(e)  
                        {  
                        alert("Unable to connect to server");  
                        }  
                    }  

                    function getInfo(){  
                    if(req.readyState==4){  
                    var val=req.responseText;  
                    document.getElementById('bus1').innerHTML=val;  
                    }  
                    }  
            </script>
    </head>
    
    <body>
   
        <div id="top">
            <p class="p1">
                Contact us on:
                     &nbsp;&nbsp;&nbsp;&nbsp;
                   <i class="fa fa-facebook-square fa-lg"  aria-hidden="true"></i>
                   &nbsp;&nbsp;&nbsp;&nbsp;
                
                <i class="fa fa-twitter fa-lg"  aria-hidden="true"></i>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                   <i class="fa fa-instagram fa-lg" aria-hidden="true"></i>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                   <i class="fa fa-envelope-o fa-lg" aria-hidden="true"></i>
                
              
                   
                <span class="p2">
                    
                        
                    
                            &nbsp;&nbsp;&nbsp;
                    
                       <b> 
                                 <a href="logout.jsp"> Welcome, Sign Out <i class="fa fa-sign-out" aria-hidden="true" fa-lg></i> </a>
                        </b>
                    
                    </span>
                    </p>
        </div>
        
         <nav>            
             <div class="logo">
             <img class="logo1" src="image/bus.svg" width="80px">
                 
             </div>
             
           <b class="topic">Bus Management serivce</b>
             
            <ul class="ulist">
                  
                
                <a href="#"><li  class="navbar">Home</li></a>
                <a href="#"><li class="navbar">Fee Enquiry</li></a>
                <a href="#"><li class="navbar">Feedback</li></a>
                <a href="#"><li class="navbar">About us</li></a>
                <a href="#"><li class="navbar">Terms and Conditions</li></a>               
            </ul>
             
             <div class="search">
             <form name="rform">
             <input type="text" name=-"start" placeholder="Search Bus via Routes" id="start" onkeyup="sendInfo()">
                 </form>
                
            <i class="fa fa-search fa-lg" aria-hidden="true" ></i>

             </div>
        </nav>
        
        <section class="mid">
        
            <div id="bus1"></div> 
        
        </section>
        
        <section class ="article">
            
            <div class="mainart">
<div class="toparticle">
            
    <div class="article1">
    
        <p class="heading">Calendar</p>
        <iframe src="https://calendar.google.com/calendar/embed?src=pemathinley1998%40gmail.com&ctz=Asia%2FKolkata" style="border: 0" width="500" height="220" frameborder="0" scrolling="no"></iframe>
        </div>
            
            <div class="article2">
                    <p class="heading">  Head of Department </p>
                <img src="image/hod.png">
                <p class="hod">
                <br>
                Contact No: 8549137658
                <br>
                <br>
                Email: hodcr7@gmail.com
                </p>            
                 
            
            </div>
 
</div>
<br>
<div class="botarticle">
            
    <div class="article3">
    
        <p class="heading">Routes</p> 
        
        <div class="driver">
            <iframe width="500" height="220" src="https://maphub.net/embed/53071?panel=1" frameborder="0" align="middle"></iframe>
        </div>
                
    </div>
            
            <div class="article4">
                    <p class="heading">  News & Events </p>
                
                            <marquee direction="up" scrollamount="4" height="60%">
                    
                                <hr size="1" color="black" width="80%">                
                
                                <h4 class="headingart">Fees</h4>
            
                                <p class="news"> Pay the fees for the bus transportation before 20/2/2019</p>
                    
                                <hr size="1" color="black" width="80%">  
                    
                                <h4 class="headingart">Route Timing</h4>
                    
                                <p class="news"> Check the timing for your buses as the routes are rescheduled</p>
                            </marquee>
                 
            
            </div>
 
</div>
            
            
            
             </div>
            
                   
        </section>
        
        
        <div class="footer">
                
            <p>©  2019 Chitkara Transport Association, All Rights Reserved</p>
            
            <img src="image/chitkara.png"> 
                
            </div>
        
    </body>

</html>
