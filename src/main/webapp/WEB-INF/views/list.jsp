<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-25
  Time: 오전 8:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>List</title>
    <link rel="/resources/">
</head>
<body>
<h2>도서목록</h2>
<table>
    <tr>
        <th>id</th>
        <th>도서명</th>
<%--        <th>출판사</th>--%>
<%--        <th>저자</th>--%>
<%--        <th>정가</th>--%>
        <th>상세조회</th>
    </tr>
    <c:forEach items="#{bookList}" var="book">
        <tr>
            <td>${book.id}</td>
            <td>${book.bookName}</td>
<%--            <td>${book.bookPublisher}</td>--%>
<%--            <td>${book.bookAuthor}</td>--%>
<%--            <td>${book.bookPrice}</td>--%>
            <td>
                <!--
                - 요청 주소 : /detail
                - 보내줘야 하는 값 : id
                - forEach가 도는 동안 그 안에서는 저 문법을 계속 쓸 수 있다.
                -->

                <!-- 숙제!!
                - detail의 요청을 처리하는 컨트롤러 메서드를 만들어라
                - 조회결과를 detail.jsp에 출력하라
                  (BookRepository에서는 sql.selectOne()을 사용하고,
                  mapper에서는 parameterType="Long"을 주고
                  resultType="book"으로 한다)
                -->
               <a href="/detail?id=${book.id}">상세조회</a>
            </td>
        </tr>
    </c:forEach>
</table>

<a href="/">뒤로가기</a>
</body>
</html>
