<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
      <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
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
              <h2>Attack Cloud Files</h2>
              			  <br />
              
<%

	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",h1="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
      		SimpleDateFormat sdfDate = new SimpleDateFormat(
					"dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat(
					"HH:mm:ss");

			Date now = new Date();

			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
			
           String cname=request.getParameter("t1");   
		    String fname=request.getParameter("t2"); 
		    String oname=request.getParameter("t3");  
			 String ct=request.getParameter("textarea");     
          
      		 
      		
      		String query="select * from cfiles where cname='"+cname+"' and fname='"+fname+"' and oname='"+oname+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	if ( rs.next() )
	   {
			
		i=rs.getInt(1);
		PrintStream p = new PrintStream(new FileOutputStream(fname));
		p.print(new String(ct));
		
		MessageDigest md = MessageDigest.getInstance("SHA1");
		FileInputStream fis11 = new FileInputStream(fname);
		DigestInputStream dis1 = new DigestInputStream(fis11, md);
		BufferedInputStream bis1 = new BufferedInputStream(dis1);

		//Read the bis so SHA1 is auto calculated at dis
		while (true) {
			int b1 = bis1.read();
			if (b1 == -1)
				break;
		}

		BigInteger bi1 = new BigInteger(md.digest());
		String spl1 = bi1.toString();
		h1 = bi1.toString(16);
	
		st.executeUpdate("update cfiles set mac='"+h1+"', ct='"+ct+"' where id="+i+"  ");
	
		 String ip_h = request.getRemoteAddr();  
			String host_h = request.getRemoteHost(); 
			
			st.executeUpdate(" insert into Attackers2 values ('Attacker','"+cname+"','"+ct+"',"+i+",'"+ip_h+"','"+host_h+"','"+dt+"') ");
			out.println("ATTACK COMPLETED");
			
        connection.close();
		
	   
	  }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>

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
