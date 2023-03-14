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
.style15 {
	color: #fff;
	font-weight: bold;
}
.style16 {font-size: 12px}
.style17 {font-size: 24;
	font-weight: bold;
	color: #666666;
}
.style2 {font-size: 14px}
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
          <h2><span>Search File: </span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="article">
            <p>
              <%
		  
		  	String fname = request.getParameter("fname");
			String user=(String)application.getAttribute("uname");
			String yes="Permitted";
			
			String query1="select * from request  where user='"+user+"' and decrypt='"+yes+"'"; 
       		Statement st1=connection.createStatement();
       		ResultSet rs1=st1.executeQuery(query1);
		   
			if ( rs1.next() )
	 		{
	   	%>
</p>
            <form action="u_Download1.jsp" method="post" name="form1" id="form1">
              <table width="473" border="0" align="center">
                <tr>
                  <td width="223" bgcolor="#FF0000"><span class="style2">Enter File Name :-</span></td>
                  <td width="245"><label>
                    <input required="required" name="t1" type="text" value="<%=fname%>" size="40" />
                  </label></td>
                </tr>
                <tr>
                  <td height="34" bgcolor="#FF0000"><span class="style2">Trapdoor :-</span></td>
                  <td><input name="t12" type="text" size="40" /></td>
                </tr>
                <tr>
                  <td bgcolor="#FF0000"><span class="style2">Secret Key :-</span></td>
                  <td><input name="t13" type="text" size="40" /></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td><div align="right">
                      <input type="submit" name="Submit" value="Req Trapdoor" />
                  </div></td>
                  <td><label>
                    <input type="submit" name="Submit2" value="Download" />
                  </label></td>
                </tr>
              </table>
            </form>
            <%
	  		}else
			{
			%>
            <p></p>
            <h2>You Don't Have Permission To View !!!</h2>
            </p>
            <br />
            <p><a href="UserMain.jsp"></a></p>
            <%	}	
			
		  %>
            <a href="ReceiverMain.jsp"></a>
            <p align="right"><a href="u_UserMain.jsp">Back</a></p>
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
