<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Medical Clinic</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />

</head>
<body>

<div id="main_container">
  <div class="header">
    <div id="logo"><a href="#">
            <!--<img src="images/logo.png" alt="" width="162" height="54" border="0" />-->
        </a></div>
    <div class="right_header">
      <div class="top_menu"> <a href="adminLogout.do" class="login">log out</a> <a href="#" class="sign_up">report</a> </div>
      <div id="menu">
        <ul>
          <li><a class="current" href="adminHome.jsp">Home</a></li>
          <li><a href="aboutUs.html">About Us</a></li>
          <li><a href="services.html">Services</a></li>
          <li><a href="contactUs.html">Contact Us</a></li>
        </ul>
      </div>
    </div>
  </div>
  <div id="middle_box">
    <div class="middle_box_content">
        <!--<img src="images/banner_content.jpg" alt="" />-->
    <h3>${logname}</h3> 
    </div>
  </div>
   <div class="pattern_bg">
    <div class="pattern_box">
      <div class="pattern_box_icon">
          <!--<img src="images/icon1.png" alt="" width="70" height="112" />-->
      </div>
      <div class="pattern_content">
        <h1>Project<span class="blue"> Vision</span></h1>
        <p class="pat">Project Mission is to Touch Billion of Lives.</p>
      </div>
    </div>
    <div class="pattern_box">
      <div class="pattern_box_icon">
          <!--<img src="images/icon2.png" alt="" width="70" height="112" /></div>-->
      <div class="pattern_content">
        <h1> Mission <span class="blue">Statement</span></h1>
        <p class="pat"> "Our mission is to bring healthcare of International standards within the reach of every individual. We are
committed to the achievement and maintenance of excellence in education, research and healthcare for the
benefit of humanity" </p>
      </div>
    </div>
  </div>
  <div id="main_content">
    <div class="box_content">
      <div class="box_title">
        <div class="title_icon">
            <!--<img src="images/mini_icon1.gif" alt="" />-->
        </div>
        <h2><span class="dark_blue">Admin</span></h2></div>
      <div class="box_text_content"> 
          <!--<img src="images/calendar.gif" alt="" class="box_icon" />-->
        <div class="box_text"><a href="viewAdminProducts.do" style="color:#099">View own products</a></div>
      </div>
      <div class="box_text_content"> 
          <!--<img src="images/calendar.gif" alt="" class="box_icon" />-->
        <div class="box_text"><a href="setProductId.do" style="color:#099">Add product</a></div>
      </div>
      <div class="box_text_content">
          <!--<img src="images/calendar.gif" alt="" class="box_icon" />-->
        <div class="box_text"><a href="adminProductSale.do" style="color:#099">Update product</a></div>
      </div>
       <div class="box_text_content"> 
           <!--<img src="images/calendar.gif" alt="" class="box_icon" />-->
        <div class="box_text"><a href="checkAdminOrderStatus.jsp" style="color:#099">Check order status</a></div>
      </div>
      <div class="box_text_content"> 
          <!--<img src="images/calendar.gif" alt="" class="box_icon" />-->
        <div class="box_text"><a href="viewOwnAdminOrders.do" style="color:#099">View past transactions</a></div>
      </div>
    </div>
    <div class="box_content">
      <div class="box_title">
        <div class="title_icon">
            <!--<img src="images/mini_icon2.gif" alt="" />-->
        </div>
        <h2><span class="dark_blue">Vendor</span>      </h2>
      </div>
      <div class="box_text_content"><img src="images/checked.gif" alt="" class="box_icon" />
        <div class="box_text"><a href="viewCurrentVendors.do" style="color:#099">View vendor details</a></div>
      </div>
      <div class="box_text_content"><img src="images/checked.gif" alt="" class="box_icon" />
        <div class="box_text"><a href="viewVendor.do" style="color:teal;">Approve vendor</a></div>
      </div>
      <div class="box_text_content"> <img src="images/checked.gif" alt="" class="box_icon" />
        <div class="box_text"><a href="chooseVendor.do" style="color:teal;">View vendor product</a></div>
      </div>
      <div class="box_text_content"> <img src="images/checked.gif" alt="" class="box_icon" />
        <div class="box_text"><a href="searchVendorProduct.jsp" style="color:teal;">Search vendor product</a></div>
      </div>
    </div>
    <div class="box_content">
      <div class="box_title">
        <div class="title_icon"><img src="images/mini_icon3.gif" alt="" /></div>
        <h2><span class="dark_blue">User</span></h2>
      </div>
      <div class="box_text_content"> <img src="images/checked.gif" alt="" class="box_icon" />
        <div class="box_text"><a href="viewCustomerOrder.do" style="color:teal;">Approve user order</a></div>
      </div>
      <div class="box_text_content"> <img src="images/checked.gif" alt="" class="box_icon" />
        <div class="box_text"><a href="addCustomerInfo.jsp" style="color:teal;">Add user</a></div>
      </div>
      <div class="box_text_content"> <img src="images/checked.gif" alt="" class="box_icon" />
        <div class="box_text"><a href="userIdRetrieve.do" style="color:teal;">View user transaction</a></div>
      </div>
    </div>
    <div class="clear"></div>
  </div>
</div>
</body>

</html>