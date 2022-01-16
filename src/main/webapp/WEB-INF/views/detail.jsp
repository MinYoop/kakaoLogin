<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>

	<form action="update.do">
		<table border="1">
			<tr>
				<td><input type="text" name="id" value="${userinfo.nickname }"></td>
			</tr>
			<tr>
				<td><input type="text" name="password"
					value="${userinfo.email }"></td>
			</tr>
			<tr>
				<td><img src="${userinfo.profile_image }" height="300px"></img></td>
			</tr>
			<tr>

				<td><input type="button" value="로그아웃"
					onclick="location.href='https://kauth.kakao.com/oauth/logout?client_id=cacd5231c6e9a148742b217941190c01&logout_redirect_uri=http://localhost:8787/kakaologin/rest.do'"></td>

			</tr>
		</table>
	</form>
</body>
</html>