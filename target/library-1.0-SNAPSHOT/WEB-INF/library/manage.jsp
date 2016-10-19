<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <s:if test="%{null != resultBook}">
        <title>修改图书 - <s:property value="%{resultBook.title}"/></title>
    </s:if>
    <s:else><title>新建图书</title></s:else>
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
<s:if test="%{null != resultBook}">

    <form id="form" method="post"

          action="<s:url action="editSubmit"/>"


          role="form">
        <div class="alert alert-info" role="alert"><s:hidden name="isbn" value="%{resultBook.isbn}"/>

            <label for="isbnView">ISBN</label>
            <div>
                <input type="number" required="required" id="isbnView" disabled="disabled"
                       value="<s:property value="%{resultBook.isbn}"/>">
            </div>
        </div>


        <div class="alert alert-info" role="alert"><label for="title">标题</label>
            <div>
                <input type="text" required="required" id="title" name="title"

                       value="<s:property value="%{resultBook.title}"/>"

                >
            </div>
        </div>


        <div class="alert alert-info" role="alert"><label for="authorId">作者</label>
            <div>

                <s:set var="oAuthorId" value="%{resultBook.author.id}"/>


                <select id="authorId" name="authorId">
                    <s:iterator value="%{allAuthors}">
                        <option value="<s:property value="%{id}"/>"
                                <s:if test="%{#oAuthorId == id}">selected="selected"</s:if>>
                            <s:property value="%{name}"/>
                        </option>
                    </s:iterator>
                </select>
            </div>
        </div>


        <div class="alert alert-info" role="alert"><label for="publisher">出版社</label>
            <div>
                <input type="text" required="required" id="publisher" name="publisher"

                       value="<s:property value="%{resultBook.publisher}"/>"

                >
            </div>
        </div>


        <div class="alert alert-info" role="alert"><label for="publishDate">出版日期</label>
            <div>
                <input type="date" required="required" id="publishDate" name="publishDate"

                       value=
                               "<s:date name="%{resultBook.publishDate}" format="yyyy-MM-dd"/>"
                >
            </div>
        </div>


        <div class="alert alert-info" role="alert"><label for="price">价格</label>
            <div>
                <input type="number" required="required" id="price" name="price"
                <s:if test="%{null != resultBook}">
                       value="<s:property value="%{resultBook.price}"/>"
                </s:if>
                >
            </div>
        </div>


        <div class="alert alert-info" role="alert">
            <div>
                <button class="btn btn-default" type="submit">保存</button>

                <button class="btn btn-default" type="button" onclick="window.close()">取消</button>
            </div>
        </div>


    </form>
</s:if>
<s:else>

    <form id="form" method="post"


          action="<s:url action="createSubmit"/>"

          role="form">


        <div class="alert alert-info" role="alert"><label for="isbn">ISBN</label>
            <div>
                <input type="number" required="required" id="isbn" name="isbn" placeholder="十三位">
            </div>
        </div>


        <div class="alert alert-info" role="alert"><label for="title">标题</label>
            <div>
                <input type="text" required="required" id="title" name="title"

                >
            </div>
        </div>


        <div class="alert alert-info" role="alert"><label for="authorId">作者</label>
            <div>


                <s:set var="oAuthorId" value="%{1}"/>

                <select id="authorId" name="authorId">
                    <s:iterator value="%{allAuthors}">
                        <option value="<s:property value="%{id}"/>"
                                <s:if test="%{#oAuthorId == id}">selected="selected"</s:if>>
                            <s:property value="%{name}"/>
                        </option>
                    </s:iterator>
                </select>
            </div>
        </div>


        <div class="alert alert-info" role="alert"><label for="publisher">出版社</label>
            <div>
                <input type="text" required="required" id="publisher" name="publisher"

                >
            </div>
        </div>


        <div class="alert alert-info" role="alert"><label for="publishDate">出版日期</label>
            <div>
                <input type="date" required="required" id="publishDate" name="publishDate">
            </div>
        </div>

        <div class="alert alert-info" role="alert"><label for="publishDate">
            <label for="price">价格</label>
            <div>
                <input type="number" required="required" id="price" name="price">
            </div>
        </div>


        <div class="alert alert-info" role="alert">
            <div>
                <button class="btn btn-default" type="submit">保存</button>

                <button  class="btn btn-default" type="button" onclick="window.close()">取消</button>
            </div>
        </div>


    </form>
</s:else>
</body>
</html>
