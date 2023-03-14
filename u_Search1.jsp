<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random"%>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
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
.style18 {color: #FFFFFF}
.style19 {font-weight: bold; font-size: 24;}
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
          <h2><span>Search Patient Report: </span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="article">
            <p>&nbsp;</p>
            <table width="594" border="1.5" cellpadding="0" cellspacing="0" align="center">
              <tr>
                <td width="86" height="29" bgcolor="#FF0000"><div align="center" class="style18"><span class="style19">File ID </span></div></td>
                <td width="204" bgcolor="#FF0000"><div align="center" class="style18"><span class="style19">Report Name </span></div></td>
                <td width="97" bgcolor="#FF0000"><div align="center" class="style18"><span class="style19">Rank </span></div></td>
				<td width="97" bgcolor="#FF0000"><div align="center" class="style18"><span class="style19">Patient Name </span></div></td>
				<td width="97" bgcolor="#FF0000"><div align="center" class="style18"><span class="style19">Medical History </span></div></td>
				<td width="97" bgcolor="#FF0000"><div align="center" class="style18"><span class="style19">Disease </span></div></td>
				<td width="97" bgcolor="#FF0000"><div align="center" class="style18"><span class="style19">Age </span></div></td>
				<td width="97" bgcolor="#FF0000"><div align="center" class="style18"><span class="style19">Gender </span></div></td>
				<td width="97" bgcolor="#FF0000"><div align="center" class="style18"><span class="style19">Address</span></div></td>
                <td width="210" bgcolor="#FF0000"><div align="center" class="style18"><span class="style19">Download Report</span></div></td>
                <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
    String user=(String)application.getAttribute("rname");
try 
  {
        
            String keyword = request.getParameter("t14");
      		String keys = "ef50a0ef2c3e3a5f";
      		String h1="";
      		String filename="filename.txt";
      		
			SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();
		
			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
			
      		byte[] keyValue = keys.getBytes();
      		Key key = new SecretKeySpec(keyValue, "AES");
      		Cipher c = Cipher.getInstance("AES");
      		c.init(Cipher.ENCRYPT_MODE, key);
      		String search = new String(Base64.encode(keyword.getBytes()));
			
			String task1="Search";
			
			String strQuery21 ="insert into transaction(user,fname,task,dt) values('"+user+"','"+keyword+"','"+task1+"','"+dt+"')";
			connection.createStatement().executeUpdate(strQuery21);
			
			
			String strQuery22 ="insert into search(user,keyword,dt) values('"+user+"','"+keyword+"','"+dt+"')";
			connection.createStatement().executeUpdate(strQuery22);
				
				String query="select * from CloudServer "; 
				Statement st=connection.createStatement();
				ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
				{
					i=rs.getInt(1);
					s2=rs.getString(2);
					s3=rs.getString(5);
					s4=rs.getString(3);
					s5=rs.getString(10);
					

					s8=rs.getString(11);
					s9=rs.getString(12);
					s10=rs.getString(13);
					s11=rs.getString(14);
					s12=rs.getString(15);
					s13=rs.getString(16);
					
					
					c.init(Cipher.DECRYPT_MODE,key);
					String decryptedValue = new String(Base64.decode(s4.getBytes()));
				    String decryptedValue1 = new String(Base64.decode(s5.getBytes()));
					 String decryptedValue2 = new String(Base64.decode(s8.getBytes()));
					  String decryptedValue3 = new String(Base64.decode(s9.getBytes()));
					   String decryptedValue4 = new String(Base64.decode(s10.getBytes()));
					    String decryptedValue5 = new String(Base64.decode(s11.getBytes()));
						 String decryptedValue6 = new String(Base64.decode(s12.getBytes()));
					
					
					
					
					if(decryptedValue.toLowerCase().contains(keyword.toLowerCase()) || decryptedValue1.toLowerCase().contains(keyword.toLowerCase()))
					{
						String strQuery1 = "select * from CloudServer where fname='"+s2+"'";
						ResultSet rs11 = connection.createStatement().executeQuery(strQuery1);
							if(rs11.next()==true)
							{
								String rank=rs11.getString(5);
								int updaterank = Integer.parseInt(rank)+1;
								String strQuery2 = "update CloudServer set rank='"+updaterank+"' where fname='"+s2+"'";
								connection.createStatement().executeUpdate(strQuery2);
								
								if(s13.equalsIgnoreCase("Most"))
								{
								%>
			  </tr>
								<tr>
								<td height="28"><div align="center"><%=i%></div></td>
								<td><div align="center"><%=s2%></div></td>
								<td><div align="center"><%=s3%></div></td>
								<td><div align="center"><%=decryptedValue1%></div></td>
								<td><div align="center"><%=decryptedValue2%></div></td>
								<td><div align="center"><%=decryptedValue3%></div></td>
								<td><div align="center"><%=decryptedValue4%></div></td>
								<td><div align="center"><%=decryptedValue5%></div></td>
								<td><div align="center"><%=decryptedValue6%></div></td>
								<td><div align="center">Most Sensitive</div></td>
								</tr>
								<%}
								if(s13.equalsIgnoreCase("Less"))
								{%>
								 </tr>
								<tr>
								<td height="28"><div align="center"><%=i%></div></td>
								<td><div align="center"><%=s2%></div></td>
								<td><div align="center"><%=s3%></div></td>
								<td><div align="center"><%=decryptedValue1%></div></td>
								<td><div align="center">Less Sensitive</div></td>
								<td><div align="center"><%=decryptedValue3%></div></td>
								<td><div align="center"><%=decryptedValue4%></div></td>
								<td><div align="center"><%=decryptedValue5%></div></td>
								<td><div align="center"><%=decryptedValue6%></div></td>
								<td><div align="center">No</div></td>
								</tr>
								
								
								<%}
								if(s13.equalsIgnoreCase("Least"))
								{%>
								
								</tr>
								<tr>
								<td height="28"><div align="center"><%=i%></div></td>
								<td><div align="center"><%=s2%></div></td>
								<td><div align="center"><%=s3%></div></td>
								<td><div align="center"><%=decryptedValue1%></div></td>
								<td><div align="center"><%=decryptedValue2%></div></td>
								<td><div align="center"><%=decryptedValue3%></div></td>
								<td><div align="center"><%=decryptedValue4%></div></td>
								<td><div align="center"><%=decryptedValue5%></div></td>
								<td><div align="center"><%=decryptedValue6%></div></td>
								<td><div align="center"><a href="u_DownloadSearch.jsp?fname=<%=s2%>"> <%=s2%> </a></div></td>
								</tr>
								
								
								<%}
								
							}
							else
							{ 
								%>
								<h2>File Not Found !!!</h2>
								<%
							}
					
			    }
			}
			
				
				%>
              <br />
              <%  
			
			
			
			
			connection.close();
	}
	catch(Exception e)
	{
	out.println(e.getMessage());
	}
%>
            </table>
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
