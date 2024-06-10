<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        <p class="pat">Jupitar's vision for the next phase of development is to 'Touch a Billion Lives'.</p>
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
    <div class="box_icon"><img src="images/admin_logo_resized.jpg" /></div>
    <div class="box_content">
      <div class="box_title">
        <div class="title_icon"><img src="images/mini_icon2.gif" alt="" /></div>
        <h2><span class="dark_blue">Product details</span></h2></div>
         <form name="abc" method="post" action="addToCart.do" onsubmit="return validate(this)">
      <div class="box_text_content"> 
        <div class="box_text">
         <jsp:useBean id="vendorProductDetails" class="com.VendorProduct" scope="request"/>
        <table>
        		<tr>
	        		<td>Id</td>
	                <td><input type="text" name="vprod_id" value="<jsp:getProperty property="vprod_id" name="vendorProductDetails"/>" readonly="readonly"/></td>                  
                </tr>
                <tr>
                    <td>Name</td>
                   <td><jsp:getProperty property="vprod_nm" name="vendorProductDetails"/></td>
                </tr>
                <tr>
                	
                    <td>Category</td>
                    <td><jsp:getProperty property="vprod_ctgry" name="vendorProductDetails"/></td>
                </tr>
                <tr>
                	
                    <td>Description</td>
                    <td><jsp:getProperty property="vprod_ctgry" name="vendorProductDetails"/></td>
                </tr>
                <tr>
                	
                    <td>Price</td>
                    <td><jsp:getProperty property="vprod_price" name="vendorProductDetails"/></td>
                </tr>
                <tr>
                	
                    <td>In stock.</td>
                    <td><input type="text" name="stk" value="<jsp:getProperty property="vprod_amt" name="vendorProductDetails"/>" readonly="readonly"/></td>
                </tr>
                 <tr>
                	
                    <td>Vendor Id</td>
                    <td><input type="text" name="vnd_id" value="<jsp:getProperty property="vnd_id" name="vendorProductDetails"/>" readonly="readonly"/></td>
                </tr>
                <tr>
                	<td>Enter quantity</td>
                    <td><%! int flag=0; 
	int temp;	
%>
<%
	try{
	HttpSession hs=request.getSession();
	java.util.List<com.VendorProduct> stk=(java.util.List<com.VendorProduct>)hs.getAttribute("cart"); 
	com.VendorProduct vp=(com.VendorProduct) request.getAttribute("vendorProductDetails");
	if(stk==null){
		flag=0;
	}
	else{
		
	for(com.VendorProduct p:stk){
		if(p.getVprod_id().equals(vp.getVprod_id())){
			temp=p.getOrd_amt();
			flag=1;
			synchronized (stk) { 
			stk.remove(p);
		}
		
	}
	}		
	}
	}catch(Exception e){
		System.out.println("oops jsp");
		e.printStackTrace();
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
         <h3 align="center"><img src="<%= img_url %>" width="100" onerror="this.src='images/uploadFiles/alt.jpg'" /></h3>
      
      </form>
      
    </div>
     <div class="top_menu">
      <div class="top_menu"><img src="images/viewvendorproductdetails.jpg" width="300" height="300"  align="right" class="login" /></div></div>
    <div class="clear"></div>
  </div>
</div>
</body>
</html>