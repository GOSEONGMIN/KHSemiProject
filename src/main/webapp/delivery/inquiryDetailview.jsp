<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
        <title>문의글쓰기</title>
        <style>
            body {
                box-sizing: border-box;
            }
    
            .header {
                padding: 20px;
                position: relative;
            }
    
            .footer > * {
                padding: 20px;
                position: relative;
            }
            
            .ft-ul {
                list-style: none;
                text-align: center;
                height: 100%;
                padding-top: 28px;
                color: black;
                font-size: 12px;
                z-index: 1;
            }
            .ft-images {
                text-align: center;
            }
            .inquiry>.row:first-child{
                border-bottom: 1px solid black;
            }
            textarea{
                resize: none;
                margin-bottom: 30px;
                background-color:#FFF !important;
            }
            .buttonBox{
                margin-bottom: 30px;
            }
            .inquiry>.row:nth-child(2){
                border-bottom: 1px solid lightgray;
            }
            .inquiry>.row:nth-child(3){
                border-bottom: 1px solid lightgray;
            }
        </style>
</head>
<body>
	<div class="wrapper">
            <div class="row justify-content-center header">
                <div class="col-lg-4 col-12">
                    <img src="/images/project_logo.PNG" class="d-block w-100" id="main-logo">
                </div>
                <div class="col-lg-8 col-12">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <div class="container-fluid">
                            <a class="navbar-brand" href="#">Boribob</a>
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">제품 보기</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">고객센터</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">회원 가입</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">리뷰</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">로그인</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">구독하기</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
            <!-- 여기까지 헤더 -->
            <!-- 여기에 바디 코드 짜주셈 -->
            <div class="container inquiry">
                <div class="row  py-3">
                    <div class="col-12">
                        <h4>문의게시판</h4> 
                    </div>
                </div>      
                <div class="row py-2">
                    <div class="col-2 col-form-label">제목</div>
                    <div class="col-10">
                        ${dto.inquiryTitle}
                    </div>
                </div>
                <div class="row py-2">
                    <div class="col-lg-2 d-none d-lg-block col-form-label">작성자</div>
                    <div class="col-lg-5 col-7">${dto.id}</div>
                    <div class="col-lg-2 d-none d-lg-block col-form-label">작성일</div>
                    <div class="col-lg-3 col-5">${dto.inquiryDate}</div>
                </div>
                <div class="row py-2">
                    <div class="col-2 form-label">내용</div>
                    <div class="col-10">
                        <textarea readonly class="form-control" id="inquiry-content" rows="20">${dto.inquiryContent}</textarea>
                    </div>
                </div>
            </div>
            <c:if test="${not empty dto.inquiryAnswer}">
            <div class="container">
            	<div class="row py-2">
                    <div class="col-2 form-label">답변</div>
                    <div class="col-10">
                        <textarea readonly class="form-control" id="inquiry-answer" rows="20">${dto.inquiryAnswer}</textarea>
                    </div>
                </div>
            </div>
            </c:if>
            <div class="buttonBox d-grid d-flex justify-content-center">
                <button type="button" class="btn btn-outline-secondary" id="back-btn">뒤로가기</button>                                
            </div>
            <script>
            $("#back-btn").on("click",function(){
            		location.href="/inquiry.iq?currentPage=1"
            	})
            </script>
            <!-- 여기부터 풋터 -->
            <div class="row justify-content-center footer">
                <div class="col-lg-10 col-12">
                    <ul class="ft-ul">
                        <li>BoriBob Inc. 사랑시 고백구 행복동</li>
                        <li>대표 : 보리밥형제들 사업자등록번호 : 780-86-01094</li>
                        <li>대표번호 : +82)-665-3430 팩스번호 : +82)-888-3430 홈페이지 : petvenience.store.com</li>
                        <li>CopyrightⓒBoriBob Inc. All Rights Reserved.</li>
                    </ul>
                </div>
                <div class="col-lg-2 col-12">
                    <ul class="ft-images">
                        <img src="/images/facebook_icon.png" style="border-color: lightblue;">
                        <img src="/images/instagram_icon.png" style="border-color: lightblue;">
                        <img src="/images/youtube_icon.png" style="border-color: lightblue;">
                    </ul>
                    <ul class="ft-ul">
                        <li><strong>고객센터</strong></li>
                        <li style="height: 8px;"></li>
                        <li>오전 10시부터 오후 6시까지</li>
                        <li>토요일, 일요일, 공휴일 휴무</li>
                    </ul>
                </div>
            </div> 
        </div>
</body>
</html>