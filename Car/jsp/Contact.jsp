<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<html>
   <head>
      <script> 
         
		 function validateForm()                                    
{ 
    var name = document.forms["myForm"]["name"];               
    var email = document.forms["myForm"]["email"];    
    var message = document.forms["myForm"]["message"];   
   
    if (name.value == "")                                  
    { 
        document.getElementById('errorname').innerHTML="Please enter a valid name";  
        name.focus(); 
        return false; 
    }else{
        document.getElementById('errorname').innerHTML="";  
    }
       
    if (email.value == "")                                   
    { 
        document.getElementById('erroremail').innerHTML="Please enter a valid email address"; 
        email.focus(); 
        return false; 
    }else{
        document.getElementById('erroremail').innerHTML="";  
    }
   
    if (email.value.indexOf("@", 0) < 0)                 
    { 
        document.getElementById('erroremail').innerHTML="Please enter a valid email address"; 
        email.focus(); 
        return false; 
    } 
   
    if (email.value.indexOf(".", 0) < 0)                 
    { 
        document.getElementById('erroremail').innerHTML="Please enter a valid email address"; 
        email.focus(); 
        return false; 
    } 
   
    if (message.value == "")                           
    {
        document.getElementById('errormsg').innerHTML="Please enter a valid message"; 
        message.focus(); 
        return false; 
    }else{
        document.getElementById('errormsg').innerHTML="";  
    }
   
    return true; 
}
      </script> 
      <style>
         
		 h1{
  text-align: center;
}

.form-style {
  margin:10px auto;
  width: 400px;
  padding: 20px 12px 10px 20px;
  font: 14px "Lucida Sans Unicode", "Lucida Grande", sans-serif;
}

.form-style td {
  padding: 0;
  display: block;
  list-style: none;
  margin: 10px 0 0 0;
}

.form-style label{
  margin:0 0 3px 0;
  padding:0px;
  display:block;
  font-weight: bold;
}

.form-style .required{
  color:red;
}
.form-style input[type=submit], .form-style input[type=reset]{
  background: #4eb5f1;
  padding: 8px 15px 8px 15px;
  border: none;
  color: #fff;
}
.form-style input[type=submit]:hover, .form-style input[type=reset]:hover{
  background: #4eb5f1;
  box-shadow:none;
  -moz-box-shadow:none;
  -webkit-box-shadow:none;
}
.form-style .field-textarea{
  height: 100px;
}
.form-style input[type=text], 
.form-style input[type=email],
textarea{
  box-sizing: border-box;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  border:1px solid #BEBEBE;
  padding: 7px;
  margin:0px;
  -webkit-transition: all 0.30s ease-in-out;
  -moz-transition: all 0.30s ease-in-out;
  -ms-transition: all 0.30s ease-in-out;
  -o-transition: all 0.30s ease-in-out;
  outline: none;  
}
.form-style .long{
  width: 100%;
}
.form-style input[type=text]:focus, 
.form-style input[type=email]:focus,
.form-style textarea:focus{
  -moz-box-shadow: 0 0 8px #88D5E9;
  -webkit-box-shadow: 0 0 8px #88D5E9;
  box-shadow: 0 0 8px #88D5E9;
  border: 1px solid #88D5E9;
}
.error{
  color: #D8000C;
  background-color: #FFBABA;
}
      </style>
   </head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<body>
	 <p><strong> CALL US </strong> <br/> 1800549632<br/>(Mon to Sat 9:30 AM to 6 PM)<br/><strong> Email-Id </strong> <br/>support@justforyou.com</p>

      <h1>Contact form</h1>
      <form name="myForm" action="/file.php" onsubmit="return validateForm()" method="post">
         <table class="form-style">
            <tr>
               <td>
                  <label>
                     Your name <span class="required">*</span>
                  </label>
               </td>
               <td>
                  <input type="text" name="name" class="long"/>
                  <span class="error" id="errorname"></span>
               </td>
            </tr>
            <tr>
               <td>
                  <label>
                    Your email address <span class="required">*</span>
                  </label>
               </td>
               <td>
                  <input type="email" name="email" class="long"/>
                  <span class="error" id="erroremail"></span>
               </td>
            </tr>
            <tr>
               <td>
                  <label>
                     Message <span class="required">*</span>
                  </label>
               </td>
               <td>
                  <textarea name="message" class="long field-textarea"></textarea>
                  <span class="error" id="errormsg"></span>
               </td>
            </tr>
            <tr>
               <td></td>
               <td>
                  <input type="submit" value="Send">      
                  <input type="reset" value="Reset"> 
               </td>
            </tr>
         </table>
      </form>
	 
   </body>
</html>