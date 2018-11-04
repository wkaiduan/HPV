<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   <title>Tellgen</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
       <link rel="stylesheet" href="css/style1.css">
</head>
<body>
 <div style="margin: 20px auto; text-align: center;">
   <!-- <img src="image/TeGen.png" style="width: 40%;" /> -->
</div>
  <div class="container">
	<section id="content">
<form name="form1" action="log" method="post">
 	<h1>Perspective</h1>
			<div>
				<input type="text" placeholder="账号" required="" id="username" name="name"/>
			</div>
			<div>
				<input type="password" placeholder="密码" required="" id="password" name="pwd" />
			</div>
			<div>
				<input type="submit" value="登录" onclick="return onCheck()" />
				<a href="#">Lost your password?</a>
				<a href="#">Register</a>
			</div>
		</form><!-- form -->
		<div class="button">
			<a href="#">Download source file</a>
		</div><!-- button -->
	</section><!-- content -->
</div><!-- container -->
</form>
 <script  src="js/index.js"></script>
</body>
</html>
<script type="text/javascript">
    function onCheck()
    {
    if((form1.username==null||form1.username.value=="")&&(form1.password==null||form1.password.value==""))
    {
    alert("姓名，密码不能为空");
    return false;
    }
    if(form1.username==null||form1.username.value=="")
    {
    alert("姓名不能为空");
    return false;
    }
    if(form1.password==null||form1.password.value=="")
    {
    alert("密码不能为空");
    return false;
    }
    else
    return true;
    }
</script>
