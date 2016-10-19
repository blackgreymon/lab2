<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>新建作者</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">

    <!-- 可选的Bootstrap主题文件（一般不用引入） -->
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body style="background-image: url('../../static/background.jpg')">

<form id="form" method="post" action="<s:url action="aCreateSubmit"/>" role="form">
    <div class="alert alert-info" role="alert"><label for="name">姓名</label>
        <div>
            <input type="text" required="required" id="name" name="name">
        </div></div>


    <div class="alert alert-info" role="alert"> <label for="age">年龄</label>
        <div>
            <input type="text" required="required" id="age" name="age">
        </div></div>


    <div class="alert alert-info" role="alert"><label for="country">国家</label>
        <div>
            <input type="text" required="required" id="country" name="country">
        </div></div>

    <div class="alert alert-info" role="alert"><button  class="btn btn-default" type="submit">保存</button>

        <button type="button" class="btn btn-default" onclick="window.close()">取消</button></div>



</body>
</html>