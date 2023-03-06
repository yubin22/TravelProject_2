<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 화면</title>

<script type="text/javascript">

//입력 확인 함수 alert창, email은 null허용
	function join(){
		if(document.register.id.value =="")
		{ //아이디
			alert("아이디를 입력해주세요.");
			document.register.id.focus();
		}else if(document.register.idDuplication.value == "")
		{ //아이디 중복 채크
			alert("아이디 중복 체크를 해주세요.");
			document.register.idDuplication.focus();
		}else if(document.register.pwd.value =="")
		{ //비밀번호
			alert("비밀번호를 입력해주세요.");
			document.register.pwd.focus();
		}else if(document.register.pwd.value != document.register.pwd1.value)
		{ //비밀번호 확인
			alert("비밀번호를 동일하게 입력해주세요.");
			document.register.pwd1.focus();
		}else if(document.register.name.value =="")
		{ //이름
			alert("이름을 입력해주세요.");
			document.register.name.focus();
		}else if(document.register.birth.value =="")
		{ //생년월일
			alert("생일을 입력해주세요.");
			document.register.birth.focus();
		}else if(document.register.gender.value =="")
		{ //성별
			alert("성별을 입력해주세요.");
			document.register.gender.focus();
		}else if(document.register.phone.value =="")
		{ //휴대폰
			alert("전화번호를 입력해주세요.");
			document.register.phone.focus();
		}else if(document.register.address.value =="")
		{ //주소
			alert("주소를 입력해주세요.");
			document.register.address.focus();
		}else{
			document.register.submit();
		}
		
		//취소 시 로그인 페이지로
		function goLoginForm(){
			location.href="loginForm.sp"
		}
	}
		
		//아이디 중복 체크
		/*$('.id_input').on("propertychange change keyup paste input", function()
			{
				var id = $('.id_input').val(); //입력한 아이디
				var data = {id : id}; //컨트롤에 넘어갈 데이터 이름 : 입력된 데이터 값
				
				$.ajax(
				{
					type : "post",
					url : "/controller/IdCheck.sp",
					data : data;
					success : function(result)
					{
						if(result != 'fail'){
							$('.id_input_re_1');
						}else{
							$('.id_input_re_2');
						}
					}
				}
			});*/
				
		//아이디 중복 체크2
		function dbCheckId()
		{
			if(document.register.id.value.length==0 || id=="")
			{
				alert("아이디를 입력해주세요.");
				document.register.id.focus();
			}else
			{
				window.open("dbCheckId.sp?id="+document.register.id.value);
			}
		}
		
		function inputIdChk() {
			document.register.idDuplication.value="idUnckeck";
			document.register.dbCheckId.disabled = false;
			document.register.dbCheckId.style.cursor="pointer";
			}
		
		/*
		// 아이디 중복확인 클릭 시 중복체크 화면open
        function openIdCheck()
		{
            window.name = "parentForm";
            window.open("idCheckForm.jsp",
                    "chkForm", "width=500, height=300, resizable = no, scrollbars = no");    
        }
 
        // 아이디 입력창에 값 입력시 hidden에 idUncheck를 세팅한다.
        // 중복체크 후 다시 아이디 창이 새로운 아이디를 입력했을 때 다시 중복체크를 하도록 한다.
        function inputIdCheck(){
            document.register.idDuplication.value ="idUncheck";
        }
		*/
		
</script>
</head>
<body>
<h2>회원가입</h2>
<div id="registerForm">
<!-- 회원가입 form 작성 -> registerAction.sp -> resgisterResult.jsp  -->
		<form name="register" action="registerAction.sp" method="get">
			<table>
                <tr>
	                <div class="id_wrap">
	                    <td id="title">아이디</td>
	                    <td>
	                    	<!-- 중복 체크 후 새로운 아이디 입력 시 중복 체크 안 된것으로 간주 -->
	                        <input type="text" name="id" maxlength="20" class="id_input" onkeydown="inputIdChk()">
	                        <!-- 중복 체크 확인 창 -->
	                        <!-- <span class="id_input_re_1">사용 가능한 아이디입니다.</span>    -->
	                         <!--<span class="id_input_re_2">아이디가 이미 존재합니다.</span> -->
	                         <!-- 중복 체크 버튼 -->
	                         <button type="button" onclick="dbCheckId()" name="dbCheckId" class="checkId">중복 확인</button>
	                         <!-- 중복 체크 여부 -->
	                         <input type="hidden" name="idDuplication" value="idUncheck">
	                    </td>
	                </div>
                </tr>
                        
                <tr>
                    <td id="title">비밀번호</td>
                    <td>
                        <input type="password" name="pwd" maxlength="15">
                    </td>
                </tr>
                
                <tr>
                    <td id="title">비밀번호 재확인</td>
                    <td>
                        <input type="password" name="pwd1" maxlength="15">
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">이름</td>
                    <td>
                        <input type="text" name="name" maxlength="40">
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">생년월일</td>
                    <td>
                        <input type="text" name="birth" maxlength="9" placeholder="8자리" size="6" >
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">성별</td>
                    <td>
                        <input type="radio" name="gender" value="남" checked>남
                        <input type="radio" name="gender" value="여" checked>여
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">이메일</td>
                    <td>
                        <input type="text" name="mail" maxlength="50">
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">휴대전화</td>
                    <td>
                        <input type="text" name="phone" />
                    </td>
                </tr>
                
                <tr>
                    <td id="title">주소</td>
                    <td>
                        <input type="text" size="50" name="address"/>
                    </td>
                </tr>
                
            </table>
            <br>
	            <input type="button" value="가입" onclick="join()"/>
	            <input type="button" value="취소" onclick="goLoginForm()">  
        </form>
</div>
</body>
</html>