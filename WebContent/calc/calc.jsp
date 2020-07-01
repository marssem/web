<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/web/calc/calc-ok.jsp">
숫자1 : <input type="text" name="num1"><br>
<select name="op">
	<option value="+">더하기</option>
	<option value="-">빼기</option>
	<option value="*">곱하기</option>
	<option value="/">나누기</option>
</select><br>
숫자2 : <input type="text" name="num2"><br>
<button>계산하기</button>
</form>
</body>
</html>