<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>|</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-quicksand.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {
	color: #FFFFFF;
	font-weight: bold;
}
.style3 {color: #FF0000; font-weight: bold; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html"></span></a></h1>
      </div>
      <div class="searchform">
        <form id="formsearch" name="formsearch" method="post" action="#">
          <span>
          <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
          </span>
          <input name="button_search" src="images/search.gif" class="button_search" type="image" />
        </form>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li ><a href="request1.jsp"><span>Request for SK</span></a></li>
          <li  ><a href="reqfile.jsp"><span>Request for File</span></a></li>
          <li><a href="SendTrust0.jsp"><span>Feedback about Cloud</span></a></li>
          <li ><a href="attackfeedback.jsp"><span>Attack Feedback</span></a></li>
          <li><a href="index.html"><span>Logout</span></a></li>
          
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
        
          <div class="mainbar">
            <div class="article">
            <p>&nbsp;</p>
              <h2>Attack Feedback</h2>
              			  <br />
              <table width="574" border="1" align="center">
  <tr>
    <td width="195" bgcolor="#FF0000"><div align="center" class="style1"><span class="style3">Owner</span></div></td>
     <td width="195" bgcolor="#FF0000"><div align="center" class="style1"><span class="style3">Cloud</span></div></td>
     <td width="195" bgcolor="#FF0000"><div align="center" class="style1"><span class="style3">Feedback</span></div></td>
      <td width="195" bgcolor="#FF0000"><div align="center" class="style1"><span class="style3">Date & Time</span></div></td>
      <td width="195" bgcolor="#FF0000"><div align="center" class="style1"><span class="style3">Attack</span></div></td>
  </tr>

<%

	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
        
           String cname=request.getParameter("t1");      
           String uname=(String)application.getAttribute("uname");
      		 
      		
      		String query="select * from feedback where cname='"+cname+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	if ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
	
		%>

  <tr>
    
   
    <td><div align="center" class="style3"><%=s2%></div></td>
    <td><div align="center" class="style3"><%=s3%></div></td>
	<td><div align="center" class="style3"><%=s4%></div></td>
	<td><div align="center" class="style3"><%=s5%></div></td>
	<td><a href="feed1.jsp?mid=<%=i%>" class="style3"> Attack &nbsp;</a></td>
  </tr>

<%
	   }
	  
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
</table>
            </div>
          </div>
        </div>
        <div class="article">
          <h2>&nbsp;</h2>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
           <li><a href="viewcloudrepu0.jsp">Find Reputation</a></li>
            <li><a href="viewcloudtrust0.jsp">Find Trust Worthy</a></li>
            <li><a href="viewcloudcost0.jsp">Find Cost & Memory</a></li>
            <li><a href="viewcloudfiles0.jsp">View Cloud Files</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
<div align=center></div>
</body>
</html>