<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.util.List" %>
<%@ page import = "com.cbg.exam.exam2.dto.Article" %>    
    
<% List<Article> articles = (List<Article>)request.getAttribute("articles"); %>
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
<title>게시물 리스트</title>
</head>
<body>
	<div class="h-12"></div>
	<section class="px-4">
		<div class="container mx-auto">
			
			<% for (Article article : articles){ %>
				<div>
					번호 : <%= article.getId() %> <br>
					등록 : <%= article.getRegDate() %> <br>
					수정 : <%= article.getUpdateDate() %> <br>
					제목 : <%= article.getTitle() %> <br>
					내용 : <%= article.getBody() %> <br>
				</div>
				<hr />
			<%} %>
		</div>
	</section>
</body>
</html>