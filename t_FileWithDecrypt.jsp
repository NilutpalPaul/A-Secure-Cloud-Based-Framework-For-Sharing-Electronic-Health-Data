<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Computation </title>
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
.style21 {font-size: 14px}
.style23 {font-size: 14px; font-weight: bold; }
.style24 {color: #f3fcff}
.style25 {
	font-size: 14px;
	color: #f3fcff;
	font-weight: bold;
}
.style26 {color: #FF0000}
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
          <li class="active"><a href="c_ComputationMain.jsp.jsp"><span>key issuer  </span></a></li>
          <li><a href="c_ComputationLogin.jsp"><span>Logout</span></a></li>
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
          <h2><span>Files With  Decrypt Permission : </span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="article">
            <p align="justify">&nbsp;</p>
            <table width="642" border="1.5" cellpadding="0" cellspacing="0" align="center">
              <tr>
                <td width="71" height="30" bgcolor="#FF0000"><div align="center" class="style21 style24"><strong>User ID </strong></div></td>
                <td width="112" bgcolor="#FF0000"><div align="center" class="style25">User Name </div></td>
                <td width="112" bgcolor="#FF0000"><div align="center" class="style25">Data Owner</div></td>
                <td width="121" bgcolor="#FF0000"><div align="center" class="style23"><span class="style25">File Name </span></div></td>
                <td width="169" bgcolor="#FF0000"><div align="center" class="style21"><strong>Permission</strong></div></td>
                <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
        	String str="Permitted";
      		String query="select * from request where decrypt='"+str+"'"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(6);
		
		%>
              </tr>
              <tr>
                <td height="28"><div align="center" class="style26"><%=i%></div></td>
                <td><div align="center" class="style26"><%=s2%></div></td>
                <td><div align="center" class="style26"><%=s3%></div></td>
                <td><div align="center" class="style26"><%=s4%></div></td>
                <td><div align="center" class="style26"><%=s5%></div></td>
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
            <p align="justify">&nbsp;</p>
            <p align="justify">&nbsp;</p>
          </div>
          <div class="clr"></div>
        </div>
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="t_TrustedMain.jsp">Home</a></li>
            <li><a href="t_TrustedLogin.jsp">Logout</a></li>
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
