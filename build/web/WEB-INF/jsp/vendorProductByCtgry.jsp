<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Medical Clinic</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
</head>
<body>
<div id="main_container">
  <div class="header">
    <div id="logo"><a href="#"><img src="images/logo.png" alt="" width="162" height="54" border="0" /></a></div>
    <div class="right_header">
      <div class="top_menu"> <a href="adminLogout.do" class="login">log out</a> <a href="#" class="sign_up">report</a> </div>
      <div id="menu">
        <ul>
          <li><a href="adminHome.jsp">Home</a></li>
          <li><a href="aboutUs.html">About Us</a></li>
          <li><a href="services.html">Services</a></li>
          <li><a href="contactUs.html">Contact Us</a></li>
        </ul>
      </div>
    </div>
  </div>
  <div id="middle_box">
    <div class="middle_box_content"><img src="images/banner_content.jpg" alt="" /><h3>&nbsp;</h3> </div>
  </div>
  <div class="pattern_bg">
    <div class="pattern_box">
      <div class="pattern_box_icon"><img src="images/icon1.png" alt="" width="70" height="112" /></div>
      <div class="pattern_content">
        <h1>Project<span class="blue"> Vision</span></h1>
        <p class="pat">Project Mission is to Touch Billion of Lives.</p>
      </div>
    </div>
    <div class="pattern_box">
      <div class="pattern_box_icon"><img src="images/icon2.png" alt="" width="70" height="112" /></div>
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
        <div class="title_icon"><img src="images/mini_icon1.gif" alt="" /></div>
        <h2><span class="dark_blue">Products</span></h2>
      </div>
      <div class="box_text_content">
	        <div class="box_text">
		        <table>
			       <c:forEach var="listElement" items="${vendorProduct}">
			       		<tr>
			       				<td><img src="images/checked.gif" alt="" class="box_icon" /></td>
								<td>${listElement.vprod_nm}</td>
						</tr>
					</c:forEach>
			        
		        </table>
	        </div>
      </div>
      
    </div>
    <div class="box_content">
      <div class="box_title">
        <div class="title_icon"><img src="images/mini_icon2.gif" alt="" /></div>
        <h2><span class="dark_blue"> Price</span></h2>
      </div>
      <div class="box_text_content">
        <div class="box_text">
        	<table>
			       <c:forEach var="listElement" items="${vendorProduct}">
			       		<tr>
			       				<td><img src="images/checked.gif" alt="" class="box_icon" /></td>
								<td>${listElement.vprod_price}</td>
						</tr>
					</c:forEach>
			        
		        </table>
        </div>
      </div>
      
    </div>
    <div class="box_content">
      <div class="box_title">
        <div class="title_icon"><img src="images/mini_icon3.gif" alt="" /></div>
        <h2><span class="dark_blue">Buy now</span>      </h2>
      </div>
      <div class="box_text_content"> 
        <div class="box_text">
        	<table>
			       <c:forEach var="listElement" items="${vendorProduct}">
			       		<tr>
			       				<td>
			       					<img src="images/checked.gif" alt="" class="box_icon" />
			       				</td>
								<td>
									<a href="viewVendorProductDetails.do?id=${listElement.vprod_id}" style="color: teal;">View product</a>
								</td>
						</tr>
					</c:forEach>
					
					
					
			        
		        </table>
		        
        </div>
      </div>
    </div>
    <div class="clear"></div>
  </div>
</div>
</body>
</html>