<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>搜索<s:if test="%{null != keyword}"> - <s:property value="%{keyword}"/></s:if></title>
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
<nav ><div class="alert alert-info" role="alert"><form method="post" action="<s:url action="search"/>" role="search">
    <div style="display: inline-block">
        <input name="keyword" required="required" type="text" placeholder="作者名" value="<s:property value="%{keyword}"/>">
    </div>
    <button class="btn btn-default" style="display: inline-block" type="submit" >搜索</button>
</form></div>
    <div class="alert alert-info" role="alert"><form method="post" action="<s:url action="search"/>" role="search">
        <input name="keyword" hidden="hidden" type="text" placeholder="作者名" value="">
        <button class="btn btn-default" type="submit" >显示所有</button>
    </form></div>
    <div class="alert alert-info" role="alert"><li><a onclick="window.open('<s:url action="manage"/>','', '');">新建图书</a></li>
        <li><a onclick="window.open('<s:url action="amanage"/>','', '');">新建作者</a></li></div>


</nav>
<div class="alert alert-info" role="alert">  <table class="table table-striped" >
    <thead>
    <tr>
        <th>ISBN</th>
        <th>标题</th>
        <th>作者</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <s:iterator value="%{resultBooks}">
        <tr>
            <td><s:property value="%{isbn}"/></td>
            <td><s:property value="%{title}"/></td>
            <td><s:property value="%{author.name}"/></td>
            <td>
                <div>
                    <button class="btn btn-default" onclick="window.open('<s:url action="detail"><s:param name="isbn" value="%{isbn}"/></s:url>',
                            '','');"
                            type="button" >详细信息</button>
                    <button class="btn btn-default" onclick="window.open('<s:url action="manage"><s:param name="isbn" value="%{isbn}"/></s:url>',
                            '', '');"
                            type="button" >更改</button>
                    <button class="btn btn-default" onclick="window.open('<s:url action="delete"><s:param name="isbn" value="%{isbn}"/></s:url>',
                            '', '');"
                            type="button" >删除</button>
                </div>
            </td>
        </tr>
    </s:iterator>
    </tbody>
</table></div>


</body>
</html>
