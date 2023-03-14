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
.style18 {font-size: 14px}
.style19 {color: #FFFFFF}
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
          <h2><span>Download Report : </span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="article">
            <form action="u_Download2.jsp" method="post" name="form1" id="form1">
              <p>
                <%
		  
	try 
	{
		String file = request.getParameter("t1");
		String trapdoor="";
		String sk="",pk1="",pk2="";
		String user=(String)application.getAttribute("uname");
		
		String yes="Permitted";
			
			String Query="select * from request  where user='"+user+"' and fname='"+file+"' and decrypt='"+yes+"'"; 
       		Statement st=connection.createStatement();
       		ResultSet rs=st.executeQuery(Query);
			if ( rs.next() )
			{
			
				String Query1 = "select * from CloudServer where fname='"+file+"'";
				ResultSet rs1 = connection.createStatement().executeQuery(Query1);
					if(rs1.next()==true)
					{
						trapdoor=rs1.getString(4);
						
						String Query2 = "select privatekey from request where user='"+user+"' and fname='"+file+"'";
						ResultSet rs2 = connection.createStatement().executeQuery(Query2);
						if(rs2.next())
						{
						
							

							String privatekey=rs2.getString(1);
							if (privatekey==null)
							{
								%>
			  </p>
								<h3 >You Have Not Requested For  Key Permission</span> !!!</h3>
								</p>
								<%
							}
							else if (privatekey.equalsIgnoreCase("Requested"))
							{
								%>
								</p>
								<h3 > Key Permission Not Provided</span> !!!</h3>
								</p>
								<%
							}
							else if (privatekey.equalsIgnoreCase("Permitted"))
							
							{
								pk1=rs1.getString(8);
								pk2=rs1.getString(9);
								sk=pk1+pk2;
								%>
								</p>
								<table width="548" border="1" cellpadding="0" cellspacing="0" align="center">
								<tr>
								<td width="223" height="35" bgcolor="#FF0000"><span class="style18 style19"><strong>Enter File Name :</strong></span></td>
								<td width="245"><label>
								<input required="required" name="t1" type="text" value="<%=file%>" size="40" />
								</label></td>
								</tr>
								<tr>
								<td height="41" bgcolor="#FF0000"><span class="style18 style19"><strong>Trapdoor :</strong></span></td>
								<td><input name="t12" type="text" value="<%=trapdoor%>" size="40" /></td>
								</tr>
								<tr>
								<td height="40" bgcolor="#FF0000"><span class="style19 style18"><strong>Secret Key :</strong></span></td>
								<td><input name="t13" type="text" value="<%=sk%>" size="40" /></td>
								</tr>
								<tr>
								<td height="41"><div align="right"></div></td>
								<td><input type="submit" name="Submit2" value="Download" /></td>
								</tr>
			  </table>
								<p>
								<%
							}
							else 
							{
								%>
								</p>
								<h3 >You Have Not Requested For  Key Permission</span> !!!</h3>
								</p>
								<%
							}
			
						}
						else
						{
							%>
							</p>
							<h3 > Key Not Requested !!!</h3>
							</p>
							<%
						}	
					}
					else
					{
						%>
						<h3>Report Doesn't Exist !!!</h3>
						<%
					}
				}
				else
				{
					%>
					<h3>You Don't Have Report Access Permission To Download !!!</h3>
					<p><a href="u_UserMain.jsp"></a></p>
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
              <p>&nbsp;</p>
              <p>&nbsp;</p>
            </form>
            <p>&nbsp;</p>
            <p align="right"><a href="u_UserMain.jsp">Back</a></p>
          </div>
          <div class="clr"></div>
        </div>
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
