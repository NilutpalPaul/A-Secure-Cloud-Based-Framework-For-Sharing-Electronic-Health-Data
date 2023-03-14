<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User </title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 24px}
.style27 {font-size: 18px}
.style28 {font-size: 12px; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1">A Secure Privacy Preserving Cloud-based Framework for Sharing Electronic Health Data</a></h1>
      </div>
      <div class="searchform">
        <form id="formsearch" name="formsearch" method="post" action="#">
          <span>
          <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search :" type="text" />
          </span>
          <input name="button_search" src="images/search.gif" class="button_search" type="image" />
        </form>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="u_UserMain.jsp"><span>Data User</span></a></li>
          <li><a href="u_UserLogin.jsp"><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>Request Decrypt Permission  : </span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="article">
            <p>&nbsp;</p>
            <p>
              <%
			  
			  try 
			  {

String owner = request.getParameter("t142");
String fname = request.getParameter("t14");
String uname=(String)application.getAttribute("uname");
//String generate ="Generate Key";
String per1="Permitted";
String per2="Requested";
SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

Date now = new Date();

String strDate = sdfDate.format(now);
String strTime = sdfTime.format(now);
String dt = strDate + "   " + strTime;

				String query1="select * from request where user='"+uname+"' and owner='"+owner+"' and fname='"+fname+"' and decrypt='"+per2+"'"; 
				Statement st1=connection.createStatement();
				ResultSet rs1=st1.executeQuery(query1);
				if ( rs1.next())
				{
					%>
			</p>
					<p class="style27">Request Already Sent To  !! </p>
					<p><a href="u_UserMain.jsp" class="style28">Back</a></p>
					<p>
					<%	
				}
				else
				{
					String query2="select * from CloudServer  where fname='"+fname+"' and downer='"+owner+"'"; 
					Statement st2=connection.createStatement();
					ResultSet rs2=st2.executeQuery(query2);
					if ( rs2.next())
					{
						String Req="null";
						String query4="select * from request where user='"+uname+"' and  fname='"+fname+"' and owner='"+owner+"'";
						ResultSet rs4 = connection.createStatement().executeQuery(query4);
						if(rs4.next())
						{
						
							String query5="update request set decrypt='"+per2+"' where user='"+uname+"' and owner='"+owner+"' and fname='"+fname+"'";
							connection.createStatement().executeUpdate(query5);
							
							%>
			</p>
							<p class="style27">Request Sent To  !! </p>
							<p><a href="u_UserMain.jsp" class="style28">Back</a></p>
							<p>
							<%
					
						}
						else
						{
						
						
							String query3="insert into request(user,owner,fname,decrypt) values('"+uname+"','"+owner+"','"+fname+"','"+per2+"')";
							connection.createStatement().executeUpdate(query3);
							
							%>
							</p>
							<p class="style27">Request Sent To  !! </p>
							<p><a href="u_UserMain.jsp" class="style28">Back</a></p>
							<p>
							<%
						}
					}
					else
					{
						%>
						</p>
						<p class="style27">File Doesn't Exist !! </p>
						<p><a href="u_UserMain.jsp" class="style28">Back</a></p>
						<p>
						<%
					}
				}
			connection.close();
	}
	catch (Exception e)
	{
		out.print(e);
	}
		
  %>
            </p>
          </div>
          <div class="clr"></div>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="u_UserMain.jsp">Home</a></li>
            <li><a href="u_UserLogin.jsp">Logout</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
