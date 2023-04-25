<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-25
  Time: 오후 2:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Save Result</title>
    <script>
        const result = '${result}';
        console.log(result);
        if (result > 0) {
            alert("신규 도서 등록이 완료되었습니다.")
            location.href = "/list"
        } else {
            alert("다시 등록하세요")
            location.href = "/save"
        }
    </script>
</head>
<body>
    <h2>이 페이지가 뜨면 성공</h2>
</body>
</html>
