<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ include file="connect.jsp" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Data Owner</title>
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
.style13 {font-size: 12px;
	color: #504b4b;
}
.style29 {color: #f3fcff}
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
          <li class="active"><a href="d_DataMain.jsp"><span>Data Owner</span></a></li>
          <li><a href="d_DataLogin.jsp"><span>Logout</span></a></li>
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
          <h2>Upload File  : </h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr">
            <p>&nbsp;</p>
            <p>&nbsp;</p>
          </div>
          <form action="d_Upload2.jsp" method="post">
            <p>
              <%
      	try {
      		String file=request.getParameter("tt");
			application.setAttribute("file1",file);
      		String cont=request.getParameter("text");
			
			
			String pname=request.getParameter("pname");
			String mh=request.getParameter("mh");
			String dis=request.getParameter("dis");
			String age=request.getParameter("age");
			String gender=request.getParameter("gender");
			String address=request.getParameter("address");
			
			
			
			
			String query1="select * from cloudserver  where fname='"+file+"' "; 
		Statement st1=connection.createStatement();
		ResultSet rs1=st1.executeQuery(query1);
	
	
		if ( rs1.next())
		{
			            %>
            </p>
            <h2 class="pages style10">File Name Already Exists !!!</h2>
            <p> <a href="SenderMain.jsp">Back</a></p>
            <p>
              <%

		
		}
		else
		{

      		String keys = "ef50a0ef2c3e3a5f";
      		String h1="";
			String namefile=request.getRealPath("file");
			
      			byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE, key);
      			String encryptedValue = new String(Base64.encode(cont.getBytes()));
				
				String encryptedValue1 = new String(Base64.encode(pname.getBytes()));
				String encryptedValue2 = new String(Base64.encode(mh.getBytes()));
				String encryptedValue3 = new String(Base64.encode(dis.getBytes()));
				String encryptedValue4 = new String(Base64.encode(age.getBytes()));
				String encryptedValue5 = new String(Base64.encode(gender.getBytes()));
				String encryptedValue6 = new String(Base64.encode(address.getBytes()));
				
				
				


      		PrintStream p = new PrintStream(new FileOutputStream(namefile+"/"));
			p.print(new String(cont));
			
			MessageDigest md = MessageDigest.getInstance("SHA1");
			FileInputStream fis11 = new FileInputStream(namefile+"/");
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
%>
            </p>
            </p>
            <table width="545" border="1.5" cellpadding="0" cellspacing="0" align="center">
              <tr>
                <td width="210" bgcolor="#FF0000"><span class="odd style13 style29"><strong>Report  Name : </strong> </span></td>
                <td width="319"><input name="t42" type="text" id="t42" size="49" value="<%= file %>" readonly="readonly" /></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000"><span class="style29"></span></td>
                <td><textarea name="text2" cols="50" rows="15" readonly="readonly"><%= encryptedValue %></textarea></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000"><span class="odd style13 style29"><strong>Trapdoor : </strong></span></td>
                <td><input name="t4" type="text" id="t4" size="49" value="<%= h1 %>" readonly="readonly" /></td>
              </tr>
			  
			    <tr>
                <td bgcolor="#FF0000"><span class="odd style13 style29"><strong>Patient Name : </strong></span></td>
                <td><input name="t41" type="text" id="t4" size="49" value="<%= encryptedValue1 %>" readonly="readonly" /></td>
              </tr>
			    <tr>
                <td bgcolor="#FF0000"><span class="odd style13 style29"><strong>Medical History : </strong></span></td>
                <td><input name="t422" type="text" id="t4" size="49" value="<%= encryptedValue2 %>" readonly="readonly" /></td>
              </tr>
			    <tr>
                <td bgcolor="#FF0000"><span class="odd style13 style29"><strong>Disease: </strong></span></td>
                <td><input name="t43" type="text" id="t4" size="49" value="<%= encryptedValue3 %>" readonly="readonly" /></td>
              </tr>
			    <tr>
                <td bgcolor="#FF0000"><span class="odd style13 style29"><strong>Age : </strong></span></td>
                <td><input name="t44" type="text" id="t4" size="49" value="<%= encryptedValue4 %>" readonly="readonly" /></td>
              </tr>
			    <tr>
                <td bgcolor="#FF0000"><span class="odd style13 style29"><strong>Gender : </strong></span></td>
                <td><input name="t45" type="text" id="t4" size="49" value="<%= encryptedValue5 %>" readonly="readonly" /></td>
              </tr>
			    <tr>
                <td bgcolor="#FF0000"><span class="odd style13 style29"><strong>Address : </strong></span></td>
                <td><input name="t46" type="text" id="t4" size="49" value="<%= encryptedValue6 %>" readonly="readonly" /></td>
              </tr>
			  
              <tr>
                <td bgcolor="#FF0000"><div align="left"><strong>Select Patient Record Sensitive Level  </strong></div></td>
                <td><select name="sensitive">
                  <option>Most</option>
                  <option>Less</option>
                  <option>Least</option>
                </select>
                </td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><input type="submit" name="Submit2" value="Upload" /></td>
              </tr>
            </table>
            <p>
              <%

	   
			}
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
            </p>
          </form>
          <div align="right"><a href="d_DataMain.jsp">Back</a></div>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="d_DataMain.jsp">Home</a></li>
            <li><a href="d_DataLogin.jsp">Logout</a></li>
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
