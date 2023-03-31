<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>

<%
    
        String username=request.getParameter("username");      

        String Password=request.getParameter("password");
        String cloud=request.getParameter("select5");
		
		String ctype="Travel Server";
		String ctype1="Entertainment Server";
		String ctype2="Online Learning Server";
		String ctype3="Health Consultation Server";
		
		if(cloud.equals("CS1"))
		{
        application.setAttribute("cname",cloud);
		application.setAttribute("ctype",ctype);
		}
		if(cloud.equals("CS2"))
		{
        application.setAttribute("cname",cloud);
		application.setAttribute("ctype1",ctype1);
		}

		if(cloud.equals("CS3"))
		{
        application.setAttribute("cname",cloud);
		application.setAttribute("ctype2",ctype2);
		}
	    
		if(cloud.equals("CS4"))
		{
        application.setAttribute("cname",cloud);
		application.setAttribute("ctype3",ctype3);
		}

try
{
	   String sql="SELECT * FROM cloud where username='"+username+"' and password='"+Password+"' and cloud='"+cloud+"'";
        Statement stmt = connection.createStatement();
	    ResultSet rs =stmt.executeQuery(sql);
		String utype="";
	   if(rs.next())
	    {
	    response.sendRedirect("cloud_main.jsp");
           }
	    else
	    {
	    response.sendRedirect("wronglogin.html");
          }
}

catch(Exception e)
{out.print(e);}
%>

