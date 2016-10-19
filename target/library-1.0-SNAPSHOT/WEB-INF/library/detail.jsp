<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>详细信息 - <s:property value="%{resultBook.title}"/></title>
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
<div class="alert alert-info" role="warning"><s:if test="%{pageType == 1}">


    <h4>确认删除这本图书吗？</h4>

    <a href="<s:url action="deleteSubmit"><s:param name="isbn" value="%{resultBook.isbn}"/></s:url>">确认</a>
    <button class="btn btn-default" onclick="window.close()">取消</button>


</s:if>
    <s:if test="%{pageType == 2}">


        <h4 ><s:property value="%{message}"/></h4>


        <button  class="btn btn-default" onclick="window.close()">关闭</button>


    </s:if></div>
<div class="alert alert-info" role="alert"> <table class="table table-striped" >
    <thead>
    <tr>
        <th colspan="2">图书信息</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>ISBN</td>
        <td><s:property value="%{resultBook.isbn}"/></td>
    </tr>
    <tr>
        <td>标题</td>
        <td><s:property value="%{resultBook.title}"/></td>
    </tr>
    <tr>
        <td>出版社</td>
        <td><s:property value="%{resultBook.publisher}"/></td>
    </tr>
    <tr>
        <td>出版日期</td>
        <td><s:date name="%{resultBook.publishDate}" format="yyyy-MM-dd"/></td>
    </tr>
    <tr>
        <td>价格</td>
        <td><s:property value="%{resultBook.price}"/></td>
    </tr>
    </tbody>
</table>

    <table class="table table-striped">
        <thead>
        <tr>
            <th colspan="2">作者信息</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>编号</td>
            <td><s:property value="%{resultBook.author.id}"/></td>
        </tr>
        <tr>
            <td>姓名</td>
            <td><s:property value="%{resultBook.author.name}"/></td>
        </tr>
        <tr>
            <td>年龄</td>
            <td><s:property value="%{resultBook.author.age}"/></td>
        </tr>
        <tr>
            <td>国家</td>
            <td><s:property value="%{resultBook.author.country}"/></td>
        </tr>
        </tbody>
    </table>
</div>




</body>
</html>
