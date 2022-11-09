<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<%if(request.getParameter("t1")!=null){%>
<% int i=2;
    Connection c;
    Statement s;
    ResultSet r;
    try
     {
      Class.forName("com.mysql.jdbc.Driver");
     c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Car","root","sbit");  
      String uname=request.getParameter("t1");
	  String password=request.getParameter("t2");
	 // session.setAttribute("name",request.getParameter("uid"));
      
	  s=c.createStatement();
      r=s.executeQuery("select *from register");
    while(r.next())
       {
	  if(r.getString(2).equals(uname) && r.getString(3).equals(password))
        {
          // i=1;
		 
          response.sendRedirect("empacc.jsp");
		  break;
        }
		 
		  i=0;
	   }
     }catch(Exception e)
      {
      out.println(e);
      }
    if(i==0)
	  {%>
	  <script language="javascript">
	  alert("wrong username and password");
	  </script>
	<% }} %>
<form>

	
<table width="100%" height="257">
  <tr valign="top">
    <td width="19%" height="24" align="center"><p><strong>
      <marquee>
        </marquee>
      <p><font size="+1" color="#000099"><a href="../jsp/home.jsp"><strong>|Home|</strong></a></font></p>
       
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp; </p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p></td>
    <td width="58" valign="top" align="center"><p><font color="#990000" size="+3">Login Form: </font></p>
        <table width="567">
          <tr>
            <td height="40" align="center">&nbsp;</td>
            <td align="left">&nbsp;</td>
          </tr>
          
          <tr>
            <td width="152" height="30" align="right"><b>User Name:</b></td>
            <td width="403" align="center"><input type="text" name="t1" size="20" /></td>
          </tr>
          <tr>
            <td width="152" height="50" align="right"><strong>Password:</strong></td>
            <td width="403" align="center"><input type="password" name="t2" size="20" /></td>
          </tr>
          <tr>
            <td width="152" height="36" align="right">&nbsp;</td>
            <td width="403" align="center"><input type="submit" value="Submit" /><input type="reset" /> </td>
          </tr>
      </table></td>
    <td width="22%"  valign="top" background="">
        
      
  </tr>
</table>
</form>
<p>&nbsp;</p>
<p align="center">&nbsp;</p>
<p>&nbsp; </p>
<p align="center">&nbsp;</p>
</body>
</html>
