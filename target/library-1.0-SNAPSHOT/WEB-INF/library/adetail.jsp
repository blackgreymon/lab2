<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>详细信息</title>
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


                    <h4>作者信息</h4>
                    <div class="alert alert-success" role="alert"><p>编号</p>
                        <p><s:property value="%{resultAuthor.id}"/></p></div>
                    <div class="alert alert-info" role="alert"><p>姓名</p>
                        <p><s:property value="%{resultAuthor.name}"/></p></div>
                    <div class="alert alert-warning" role="alert"><p>年龄</p>
                        <p><s:property value="%{resultAuthor.age}"/></p></div>
                    <div class="alert alert-danger" role="alert"><p>国家</p>
                        <p><s:property value="%{resultAuthor.country}"/></p></div>








                    <button type="button" class="btn btn-default" onclick="window.close()">关闭</button>




</body>
</html>
