<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    <div id="logo"><a href="#"><img src="images/logo.png" alt="" width="162" height="54" border="0" /></a></div>
    <div class="right_header">
      <div class="top_menu"> <a href="customerLogout.do" class="login">log out</a> <a href="#" class="sign_up">report</a> </div>
      <div id="menu">
        <ul>
          <li><a href="customerHome.jsp">Home</a></li>
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
    <div class="box_icon"><img src="images/customer_logo.jpg" width="250" height="350" /></div>
    <div class="box_content">
      <div class="box_title">
        <div class="title_icon"><img src="images/mini_icon2.gif" alt="" /></div>
        <h2><span class="dark_blue">Product details</span></h2></div>
         <form name="abc" method="post" action="addToCartCustomer.do" onsubmit="return validate(this)">
      <div class="box_text_content"> 
        <div class="box_text">
         <jsp:useBean id="adminProductDetails" class="com.AdminProduct" scope="request"/>
        <table>
        		<tr>
	        		<td><b>Id</b></td>
	                <td><input type="text" name="prod_id" value="<jsp:getProperty property="prod_id" name="adminProductDetails"/>" readonly="readonly"/></td>                  
                </tr>
                <tr>
                    <td><b>Name</b></td>
                   <td><jsp:getProperty property="prod_nm" name="adminProductDetails"/></td>
                </tr>
                <tr>
                	
                    <td><b>Category</b></td>
                    <td><jsp:getProperty property="prod_ctgry" name="adminProductDetails"/></td>
                </tr>
                <tr>
                	
                    <td><b>Description</b></td>
                    <td><jsp:getProperty property="prod_ctgry" name="adminProductDetails"/></td>
                </tr>
                <tr>
                	
                    <td><b>Price</b></td>
                    <td><jsp:getProperty property="prod_price" name="adminProductDetails"/></td>
                </tr>
                <tr>
                	
                    <td><b>In stock</b></td>
                    <td><input type="text" name="stk" value="<jsp:getProperty property="prod_amt" name="adminProductDetails"/>" readonly="readonly"/></td>
                </tr>
                 
                <tr>
                	<td><b>Quantity</b></td>
                    <td><%! int flag=0; 
	int temp;	
%>
<%
try{
	HttpSession hs=request.getSession();
	java.util.List<com.AdminProduct> stk=(java.util.List<com.AdminProduct>)hs.getAttribute("cart"); 
	com.AdminProduct ap=(com.AdminProduct) request.getAttribute("adminProductDetails");
	if(stk==null){
		flag=0;
	}
	else{
	for(com.AdminProduct p:stk){
		if(p.getProd_id().equals(ap.getProd_id())){
			temp=p.getOrd_amt();
			flag=1;
			synchronized (stk) {
			stk.remove(p);
			}
		}
		
	}
	
	}
}catch(Exception e){
	
}
	if(flag==0)
		{
			%><input type="text" name="amount"/> <%
		}
	else{
		%><input type="text" name="amount" value="<%=temp%>"/> <%
	}
%></td>
                </tr>
               
                 	
                </table>               
        </div>
      </div>
      
  
       <h3 align="center"><input type="submit" name="add2cart" value="Add to cart"/></h3>
        <%
      String id=(String)(request.getAttribute("prodID"));
      String img_url="images/uploadFiles/"+id+".jpg";
      %>
         <h3 align="center"><img src="<%= img_url %>" width="100" onerror="this.src='images/uploadFiles/alt.jpg'"/></h3>
      
     
      </form>
  
    </div>
    
     <div class="top_menu">
      <div class="top_menu"> 
<img src="images/customer_viewadminproductdetails.jpg" width="300" height="350"  align="right" class="login" /></div></div>
      
    <div class="clear"></div>
  </div>

</div>
</body>
</html>