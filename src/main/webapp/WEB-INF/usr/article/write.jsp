<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!-- 테일윈드 불러오기 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.6/tailwind.min.css" />

<!-- 데이지UI 불러오기 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/daisyui/1.10.0/full.css" />

<!-- 제이쿼리 불러오기 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- 폰트어썸 불러오기 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/font.css" />

<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/common.css" />

<!-- 모바일에서 디자인이 축소되지 않게 하기 위한 코드 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta charset="UTF-8">
<title>게시물 작성</title>
</head>
<body>
	<div class="h-12"></div>
	<section class="px-4">
		<div class="container mx-auto">
			<script>
				let ArticleWrite__submitDone = false;
				function ArticleWrite__submit(form){
					if(ArticleWrite__submitDone){
						return;
					}
					
					if(form.title.value.length == 0){
						alert("제목을 입력해주세요.");
						form.title.focus();
						return;
					}
					
					if(form.body.value.length == 0){
						alert("내용을 입력해주세요.");
						form.body.focus();
						return;
					}
					
					form.submit();
					ArticleWrite__submitDone = true;
				}
			</script>
			<form action="../article/doWrite" method="POST" onsubmit="ArticleWrite__submit(this); return false;">
				<div class="form-control">
				  <label class="label">
				    <span class="label-text">제목</span>
				  </label> 
				  <input type="text" name="title" placeholder="제목입력" class="input input-bordered">
				</div>
				<div class="form-control">
				  <label class="label">
				    <span class="label-text">내용</span>
				  </label> 
				  <textarea name="body" class="textarea h-24 textarea-bordered" placeholder="내용입력"></textarea>
				</div>
				<div class="submit-btn mt-2">
					<input type="submit" value="작성" class="btn btn-sm"> 
				</div>
			</form>
		</div>
	</section>
</body>
</html>