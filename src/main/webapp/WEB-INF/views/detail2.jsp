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
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

	<script>
	var userId;
	var userEmail;
	var userNickName;
	var userPofile;
		Kakao.init('28f7b9e900b2d7ec5a8b1c589fe4f2bd');
		Kakao.Auth.setAccessToken('${access_token}');
		
		Kakao.API.request({
		    url: '/v2/user/me',
		    success: function(response) {
		        console.log(response);
		        
		        userId = response.id;      //유저의 카카오톡 고유 id
		        userEmail = response.kakao_account.email;   //유저의 이메일
		        userNickName = response.properties.nickname; //유저가 등록한 별명
		        userProfile = response.properties.profile_image;
		        
		        console.log(userId);
		        console.log(userEmail);
		        console.log(userNickName);
		        console.log(userProfile);
		        document.getElementById("id").value = userNickName;
		        document.getElementById("email").value = userEmail;
		        document.getElementById("img").src = userProfile;

		        
		    },
		    fail: function(error) {
		        console.log(error);
		    }
		});
		
	function logout(){
		Kakao.Auth.logout(function() {
			location.href = "javascript.do"
			});
		
	}

	</script>

	<form action="update.do">
		<table border="1">
			<tr>
				<td><input type="text" id ="id" value=""></td>
			</tr>
			<tr>
				<td><input type="text" id ="email"
					value="&{userId};"></td>
			</tr>
			<tr>
				<td><img src="&{userId};" id = "img" height="300px"></img></td>
			</tr>
			<tr>

				<td><input type="button" value="로그아웃"
					onclick="logout()"></td>

			</tr>
		</table>
	</form>
</body>
</html>