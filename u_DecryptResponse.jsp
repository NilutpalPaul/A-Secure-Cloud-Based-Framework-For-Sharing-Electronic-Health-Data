<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
.style19 {font-size: 14px}
.style20 {color: #3f3f3f}
.style21 {	font-size: 14px;
	color: #3f3f3f;
	font-weight: bold;
}
.style22 {font-size: 12px}
.style23 {color: #3f3f3f; font-size: 12px; }
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
          <h2><span>Decrypt Permission Response  : </span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="article">
            <form id="form" name="form1" method="post" action="u_finddk.jsp">
              <div align="center" class="style19">
                <p align="left" class="style20">&nbsp;</p>
                <p align="left" class="style20"><span class="style22">Enter Owner Name:</span>
                  <input required="required" name="t42" type="text" size="30" />
                </p>
                <p align="left"><span class="style23"> Enter File Name :&nbsp;&nbsp;&nbsp;&nbsp;</span>
                    <input required="required" name="t14" type="text" size="30" />
                </p>
                <p align="left"><br />
                    <br />
                    <input type="submit" name="Submit" value="View Decrypt Permission Response" />
                </p>
              </div>
              <p align="right"><span class="style21">
                <!--File Access  Permission Response : <%/*=application.getAttribute("key")*/%>&nbsp;-->
                </span><span class="style23"><a href="u_UserMain.jsp">Back</a></span></p>
            </form>
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
            <li><a href="u_Search.jsp">Search</a></li>
            <li><a href="u_ViewFiles.jsp">View Files </a></li>
            <li><a href="u_Download.jsp">Download File </a></li>
            <li><a href="u_RequestPK.jsp">Req Private Key </a></li>
            <li><a href="u_PKResponse.jsp">Private Key Response </a></li>
            <li><a href="u_RequestDecrypt.jsp">Req Decrypt Permission </a></li>
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
