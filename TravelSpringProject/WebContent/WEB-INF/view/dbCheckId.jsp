<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 체크</title>
<!-- Travel main styles -->
<link rel="stylesheet" href="assets/css/travel.css">
<link rel="stylesheet" href="assets/css/form.css">
<script type="text/javascript">
	function sendCheckValue() {
		var openJoinfrm = opener.document.register;

		if (document.checkIdForm.id.value == "") {
			alert("다른 아이디를 입력해주세요.");
			openJoinfrm.id.focus();

			window.close();
		} else {
			// 중복체크 결과인 idCheck 값을 전달
			openJoinfrm.idDuplication.value = "idCheck";
			openJoinfrm.id.value = '${param.id}';
			//openJoinfrm.checkId.disabled=true;
			openJoinfrm.checkId.style.opacity = 0.6;
			openJoinfrm.checkId.style.cursor = "default";
			window.close();
		}

	}
</script>
</head>
<body>
	<b><font size="4" color="gray">ID 중복 확인</font></b>
	<br>
	<form name="checkIdForm" action="dbCheckId.sp">
		<fieldset>
			<c:choose>
				<c:when test="${result.id!=null}">
					<input type="text" name="id" value="${result.id}" id="id">
					<p style="color: red">이미 사용 중인 아이디입니다.</p>
					<input class="btn btn-primary w-md" type="submit" value="중복 체크">
				</c:when>
				<c:when test="${result.id==null}">
					<p>${param.id}는 사용가능한 아이디입니다.</p>
					<input class="btn btn-primary w-md"  onclick="sendCheckValue()" value="사용">
					<input class="btn btn-primary w-md" onclick="window.close()" value="취소">
				</c:when>
				<c:otherwise>
					<input type="text" name="id" value="${result.id}" id="id">
					<input class="btn btn-primary w-md" type="submit" value="중복 체크">
				</c:otherwise>
			</c:choose>
		</fieldset>
	</form>
</body>
</html>