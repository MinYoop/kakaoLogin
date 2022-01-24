<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta charset="utf-8" />
<title>Home</title>
<body>
	<h1>kakao javascript login</h1>
	<br />
	<br />
	
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	
    <script>
        // SDK를 초기화 합니다. 사용할 앱의 JavaScript 키를 설정해 주세요.
        Kakao.init('28f7b9e900b2d7ec5a8b1c589fe4f2bd');

        // SDK 초기화 여부를 판단합니다.
        console.log(Kakao.isInitialized());
    </script>

	<a id="custom-login-btn" href="javascript:loginWithKakao()"> <img
		src="//k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg"
		width="222" alt="카카오 로그인 버튼" />
	</a>
	<p id="token-result"></p>
	<script type="text/javascript">
	// Auth.authorize 함수로 서버에서 리다이렉트 받아서 인가코드로 accessToken을 발급 받고 페이지로 전달해서 자바스크립트 api로 사용자 정보 받아오기!
  function loginWithKakao() {
    Kakao.Auth.authorize({
      redirectUri: 'http://3.210.71.242:8080/KaKaoLogin/kakaologin.do',
      state: "javascript"
    })
  }
  // 아래는 데모를 위한 UI 코드입니다.
  
</script>
	<!-- 
	<script>
        window.Kakao.init('28f7b9e900b2d7ec5a8b1c589fe4f2bd');

        function kakaoLogin() {
            window.Kakao.Auth.login({
                scope: 'profile_nickname, profile_image, account_email,', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
                success: function(response) {
                    console.log(response) // 로그인 성공하면 받아오는 데이터
                    window.Kakao.API.request({ // 사용자 정보 가져오기 
                        url: '/v2/user/me',
                        success: (res) => {
                            const kakao_account = res.kakao_account;
                            console.log(kakao_account)
                        }
                    });
                    // window.location.href='/ex/kakao_login.html' //리다이렉트 되는 코드
                },
                fail: function(error) {
                    console.log(error);
                }
            });
        }
    </script> -->




</body>
</html>
