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
<title>Cloud </title>
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
.style22 {font-size: 14px; font-weight: bold; }
.style24 {color: #FF0000; font-weight: bold; }
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
          <li class="active"><a href="p_CloudMain.jsp"><span>Cloud Server</span></a></li>
          <li><a href="p_CloudLogin.jsp"><span>Logout </span></a></li>
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
          <h2><span>End User Details: </span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="article">
            <p>&nbsp;</p>
            <table width="615" border="1.5" cellpadding="0" cellspacing="0" align="center">
              <tr>
                <td width="69" height="31" bgcolor="#FF0000"><div align="center" class="style22"> ID </div></td>
                <td width="124" bgcolor="#FF0000"><div align="center" class="style22">User Name </div></td>
                <td width="114" bgcolor="#FF0000"><div align="center" class="style22">Email </div></td>
                <td width="103" bgcolor="#FF0000"><div align="center" class="style22">Mobile</div></td>
				 <td width="103" bgcolor="#FF0000"><div align="center" class="style22">Address</div></td>
                <td width="193" bgcolor="#FF0000"><div align="center" class="style22">DOB</div></td>
				<td width="193" bgcolor="#FF0000"><div align="center" class="style22">Gender</div></td>
			    <td width="193" bgcolor="#FF0000"><div align="center" class="style22">Pin</div></td>
				<td width="193" bgcolor="#FF0000"><div align="center" class="style22">Location</div></td>
              </tr>
              <%

	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
        
          
      		
      		 
      		
      		String query="select * from user "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s3=rs.getString(2);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
				s7=rs.getString(7);
						s8=rs.getString(8);
								s9=rs.getString(9);
								s10=rs.getString(10);
		
	
		%>
              <tr>
                <td height="29"><div align="center" class="style24"><%=i%></div></td>
                <td><div align="center" class="style24"><%=s3%></div></td>
                <td><div align="center" class="style24"><%=s4%></div></td>
                <td><div align="center" class="style24"><%=s5%></div></td>
                <td><div align="center" class="style24"><%=s6%></div></td>
				<td><div align="center" class="style24"><%=s7%></div></td>
				<td><div align="center" class="style24"><%=s8%></div></td>
				<td><div align="center" class="style24"><%=s9%></div></td>
				<td><div align="center" class="style24"><%=s10%></div></td>
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
            <p>&nbsp;</p>
            <p align="right"><a href="p_CloudMain.jsp">Back</a></p>
            <p align="justify">&nbsp;</p>
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
            <li><a href="p_CloudMain.jsp">Home</a></li>
            <li><a href="p_ViewFiles.jsp">View Files </a></li>
			<li><a href="p_ViewAttackers.jsp">File Attackers </a></li>
            <li><a href="p_ViewResults.jsp">View Results </a></li>
			<li><a href="p_ViewDecryptPer.jsp">View Decrypt Permission </a></li>
            <li><a href="p_ViewPrivateKPer.jsp">View Private Key Permission </a></li>
            <li><a href="p_CloudLogin.jsp">Logout</a></li>
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
