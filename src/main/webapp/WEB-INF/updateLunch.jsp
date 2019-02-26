<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>更新部门信息</title>
    
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
   <script type="text/javascript">
    	$(document).ready(function(e) {
        $.ajax({		  
		type:'POST',  //请求类型
		url:'http://localhost:8080/school/ajax/getTes_rear',
		data:{dname:$("#dname").val()},
		dataType:'json',
		success: function(data){
			console.log(data);
			var data2= eval(data);
			for(var i in data2){
				$("#cookerid").append(
				"<option value='"+data2[i].tno+"'>"+data2[i].tname+"</option>"
				);
			}
			},
		error:function(msg){}
		})
		//点击验证
	 $("#update").click(function(){ 
							if($("#caipin").val()=='' || $.trim($("#caipin").val())==''){
								alert("请输入菜式名字");
								return false;
							}else if($("#date").val()=='' || $.trim($("#date").val())==''){
								alert("请输入日期");
								return false;
							}else{
							var add=document.getElementById("updateLunch");
							add.submit();
							}	
	})
    });
   </script>
  </head>
  
  <body>

<div class="container jumbotron well" style="background-color: #F0F0F0">
  <div class="row row-centered"> 
  	<div class="col-md-6 col-md-offset-3 col-centered">
    <form class="form-horizontal" method="post" action="lunch/updateLunch" name="updateLunch" id="updateLunch" onsubmit="return false;">
  		<h2>更新午餐信息</h2>
  		<input value="后勤" type="hidden" id="dname" name="dname">
  		<input value="${lunch.id}"  type="hidden" id="id" name="id">
  		<div class="form-group">
    			<label for="studentName" class="control-label col-md-3">菜式：</label>
                <div class="col-md-6"> 
                	<input class="form-control" type="text" value="${lunch.caipin}" id="caipin" name="caipin"/>      
                </div>
                
    	</div>
    	 <div class="form-group">
        		<label for="itemLabel" class="control-label col-md-3">厨师：</label>
                <div class="col-md-6">
        			<select name="cookerid" id="cookerid" class="form-control">
        				 
        			</select>			        		
                </div>
        </div>
    	<div class="form-group">
        		<label for="priceLabel" class="control-label col-md-3">日期：</label>
                <div class="col-md-6">
        			<input class="form-control" type="text" value="${lunch.date}" id="date" name="date"/>				        			        		
                </div>
        </div>
        <div class="form-group">
        <div class="col-md-offset-4">
    			<input class="btn btn-info" type="button" id="update" value="更新" onClick="if(confirm('确认信息是否正确?')==false)return false;"/>
    			<input class="btn btn-info" type="reset" value="重置"/>
    	</div>
        </div>
        </form>
  </div>
  </div>
  </div>
  </body>
</html>
