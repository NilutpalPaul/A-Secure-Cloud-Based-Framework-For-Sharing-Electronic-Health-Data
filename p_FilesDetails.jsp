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
.style21 {font-size: 14px}
.style24 {color: #FFFFFF}
.style25 {font-size: 14px; color: #FFFFFF; }
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
          <h2><span>Patient Report Details   : </span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="article">
            <p align="justify">&nbsp;</p>
            <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="",s11="",s12="",s13="";
	int i=0,j=0,k=0;
String fname=request.getParameter("fname");	
try 
	{
      		String query="Select *from CloudServer where fname='"+fname+"'"; 
            Statement st=connection.createStatement();
            ResultSet rs=st.executeQuery(query);
			while ( rs.next() )
			{
					i=rs.getInt(1);
					s1=rs.getString(2);
					s2=rs.getString(3);
					s3=rs.getString(4);
					s4=rs.getString(5);
					s5=rs.getString(6);
					s6=rs.getString(7);
					
					s7=rs.getString(10);
					s8=rs.getString(11);
					s9=rs.getString(12);
					s10=rs.getString(13);
					s11=rs.getString(14);
					s12=rs.getString(15);
					
					
				}	
     connection.close();
	  }
	 
	  catch(Exception e)
	  {
		out.println(e.getMessage());
	  }
		
						%>
            <table width="568" border="1.5" cellpadding="0" cellspacing="0" align="center">
              <tr>
                <td width="159" height="40" bgcolor="#FF0000"><div align="center" class="style21 style24">
                    <div align="left"><strong> ID :</strong></div>
                </div></td>
                <td width="393"><label>
                  <input name="textfield" type="text" value="<%=i%>" size="49" />
                  </label>                </td>
              </tr>
              <tr>
                <td height="40" bgcolor="#FF0000"><div align="center" class="style25">
                    <div align="left"><strong>File Name : </strong></div>
                </div></td>
                <td><input name="textfield2" type="text" size="49" value="<%=s1%>" />                </td>
              </tr>
              <tr>
                <td height="182" bgcolor="#FF0000"><div align="center" class="style25">
                    <div align="left"><strong>Contents :</strong></div>
                </div></td>
                <td><label>
                  <textarea rows="10"  cols="50"  name="textarea"><%=s2%></textarea>
                  </label>                </td>
              </tr>
              <tr>
                <td height="41" bgcolor="#FF0000"><div align="center" class="style25">
                    <div align="left"><strong>Trapdoor :</strong></div>
                </div></td>
                <td><input name="textfield3" type="text" value="<%=s3%>" size="49" /></td>
              </tr>
              <tr>
                <td height="40" bgcolor="#FF0000"><div align="center" class="style25">
                    <div align="left"><strong>Rank : </strong></div>
                </div></td>
                <td><input name="textfield32" type="text" value="<%=s4%>" size="49" /></td>
              </tr>
              <tr>
                <td height="38" bgcolor="#FF0000"><div align="center" class="style25">
                    <div align="left"><strong>Date &amp; Time </strong></div>
                </div></td>
                <td><input name="textfield33" type="text" value="<%=s5%>" size="49" /></td>
              </tr>
              <tr>
                <td height="43" bgcolor="#FF0000"><div align="center" class="style25">
                    <div align="left"><strong>Data Owner </strong></div>
                </div></td>
                <td><input name="textfield34" type="text" value="<%=s6%>" size="49" /></td>
              </tr>
			  
			  
			   <tr>
                <td height="38" bgcolor="#FF0000"><div align="center" class="style25">
                    <div align="left"><strong>Patient Name </strong></div>
                </div></td>
                <td><input name="textfield33" type="text" value="<%=s7%>" size="49" /></td>
              </tr>
			  
			   <tr>
                <td height="38" bgcolor="#FF0000"><div align="center" class="style25">
                    <div align="left"><strong>Medical History </strong></div>
                </div></td>
                <td><input name="textfield33" type="text" value="<%=s8%>" size="49" /></td>
              </tr>
			  
			   <tr>
                <td height="38" bgcolor="#FF0000"><div align="center" class="style25">
                    <div align="left"><strong>Disease </strong></div>
                </div></td>
                <td><input name="textfield33" type="text" value="<%=s9%>" size="49" /></td>
              </tr>
			  
			   <tr>
                <td height="38" bgcolor="#FF0000"><div align="center" class="style25">
                    <div align="left"><strong>Age </strong></div>
                </div></td>
                <td><input name="textfield33" type="text" value="<%=s10%>" size="49" /></td>
              </tr>
			  
			   <tr>
                <td height="38" bgcolor="#FF0000"><div align="center" class="style25">
                    <div align="left"><strong>Gender </strong></div>
                </div></td>
                <td><input name="textfield33" type="text" value="<%=s11%>" size="49" /></td>
              </tr>
			  
			   <tr>
                <td height="38" bgcolor="#FF0000"><div align="center" class="style25">
                    <div align="left"><strong>Address </strong></div>
                </div></td>
                <td><input name="textfield33" type="text" value="<%=s12%>" size="49" /></td>
              </tr>
              
			  
			  
            </table>
            <p></p>
            <p>&nbsp;</p>
            <p align="right"><a href="p_CloudMain.jsp">Back</a></p>
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
            <li><a href="p_ViewAttackers.jsp">File Attackers </a></li>
			<li><a href="p_Transactions.jsp">Transactions</a></li>
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
