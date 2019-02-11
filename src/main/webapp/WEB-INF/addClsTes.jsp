<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加班级课程</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<%@ include file="../resource/link.html" %>
	<link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.1.1.js"></script>
   <script src="js/bootstrap.min.js"></script>
  </head>
  
  <body>
    
   <div class="container jumbotron well" style="background-color: #F0F0F0">
  <div class="row row-centered"> 
  	<div class="col-md-6 col-md-offset-3 col-centered">
    <h2>添加班级教师</h2>
    <form class="form-horizontal" method="post" action="cls/addClsTes" name="addClsTes" id="addClsTes">
  		<div class="form-group">
  				<input type="hidden" value="${classes.id}" id="classid" name="classid">
    			<label for="classnamelabel" class="control-label col-md-3">班级名字：</label>
                <div class="col-md-6"> 
                <label for="classname" class="control-label">${classes.classname}</label>	                
                </div>
    	</div>
        <div class="form-group">
        		<label for="teachername" class="control-label col-md-3">教师：</label>
                <div class="col-md-6">
    				<select name="teachertno" class="form-control">
    					<option value="1">李成才</option>
    					<option value="3">王萍</option>
    					<option value="4">刘斌</option>
    				</select>	
                </div>
        </div>
        <div class="form-group">
        <div class="col-md-offset-4">
    			<input class="btn btn-info" type="submit" value="添加"/>
    	</div>
        </div>
        </form>
  </div>
  </div>
  </div>
  </body>
</html>
