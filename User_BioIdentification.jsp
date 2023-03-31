<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User_BioIdentification</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-quicksand.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style5 {
	font-size: 24px;
	color: #FF0000;
	font-weight: bold;
}
.style6 {
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
        <h1><a href="index.html"><span class="style5">  </span> </a></h1>
      </div>
      <div class="searchform">
        <form id="formsearch" name="formsearch" method="post" action="#">
          <span>
          <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
          </span>
          <input name="button_search" src="images/search.gif" class="button_search" type="image" />
        </form>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="user_main.jsp"><span>Home Page</span></a></li>
          <li class="active"><a href="index.html"><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
        
          <div class="mainbar">
            <div class="article">
            <p>&nbsp;</p>
              <form action="UBioIdentiry.jsp" method="post" id="sendemail" enctype="multipart/form-data">
            <ol><li><ol><ol><ol>
              <p><span class="style36">
                <label for="label"><span class="style6">User Biometric Authentication<br />
                <br />
                Select Finger Print(required)</span></label>
                  </span> <span class="style36">
                      <input type="file" id="label" name="pic2" class="text" />
                    </span></p>
            </ol>
                  </ol>
                </ol>
			  </li>
              <li>
                <div class="clr"></div>
              </li>
            </ol>
            <p>&nbsp;            </p>
            <p align="center">
              <input name="Submit" type="submit" class="style5" value="Submit" />
            </p>
          </form>
              <p align="justify">&nbsp;</p>
            </div>
          </div>
        </div>
        <div class="article">
          <h2>&nbsp;</h2>
          </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
          <h2 class="star">&nbsp;</h2>
        </div>
      </div>
      </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
<div align=center></div>
</body>
</html>
