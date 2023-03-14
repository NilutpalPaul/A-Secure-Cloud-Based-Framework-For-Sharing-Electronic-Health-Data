<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Data OwnerRegister</title>
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
.style2 {
	color: #FF0000;
	font-weight: bold;
}
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
          <li><a href="index.html"><span>Home </span></a></li>
          <li><a href="u_UserLogin.jsp"><span>Data User</span></a></li>
          <li class="active"><a href="d_DataLogin.jsp"><span>Data Owner</span></a></li>
          <li><a href="c_ComputationLogin.jsp"><span></span></a></li>
          <li><a href="t_TrustedLogin.jsp"><span>Certificate Authority</span></a></li>
          <li><a href="p_CloudLogin.jsp"><span>Cloud Server </span></a></li>
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
          <h2><span>Data Owner Register : </span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <form action="d_DRegister.jsp" method="post" id="" enctype="multipart/form-data">
            <label for="name"><span class="style2"><br />
              Owner Name (required)<br />
            </span></label>
            <p class="style2">
              <input id="name" name="Data Userid" class="text" />
            </p>
            <span class="style2">
            <label for="password">Password (required)<br />
            </label>
            </span>
            <p class="style2">
              <input type="password" id="password" name="pass" class="text" />
            </p>
            <span class="style2">
            <label for="email">Email Address (required)<br />
            </label>
            </span>
            <p class="style2">
              <input id="email" name="email" class="text" />
            </p>
            <span class="style2">
            <label for="mobile">Mobile Number (required)<br />
            </label>
            </span>
            <p class="style2">
              <input id="mobile" name="mobile" class="text" />
            </p>
            <span class="style2">
            <label for="address">Your Address<br />
            </label>
            </span>
            <p class="style2">
              <textarea name="address" cols="50" id="address"></textarea>
            </p>
            <span class="style2">
            <label for="dob">Date of Birth (required)<br />
            </label>
            </span>
            <p class="style2">
              <input id="dob" name="dob" class="text" />
            </p>
            <span class="style2">
            <label for="gender">Select Gender (required)<br />
            </label>
            </span>
            <p class="style2">
              <select id="s1" name="gender" class="text">
                <option>-Select-</option>
                <option>Male</option>
                <option>Female</option>
              </select>
            </p>
            <span class="style2">
            <label for="pincode">Enter Pincode (required)<br />
            </label>
            </span>
            <p class="style2">
              <input id="pincode" name="pincode" class="text" />
            </p>
            <span class="style2">
            <label for="location">Enter Location (required)<br />
            </label>
            </span>
            <p class="style2">
              <input id="loc" name="location" class="text" />
            </p>
            <span class="style2">
            <label for="pic">Select Profile Picture (required)</label>
            </span>
            <strong>
            <label for="pic"></label>
            </strong>
            <label for="pic"><br />
            </label>
            <p>
              <input type="file" id="pic" name="pic" class="text" />
            </p>
            <p>
              <input name="submit" type="submit" value="REGISTER" />
            </p>
          </form>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="u_UserLogin.jsp">User</a></li>
            <li><a href="d_DataLogin.jsp">Data Owner</a></li>
            <li><a href="p_CloudLogin.jsp">Cloud Server </a></li>
            <li><a href="t_TrustedLogin.jsp">Certificate Authority</a></li>
            <li><a href="c_ComputationLogin.jsp"> </a></li>
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
