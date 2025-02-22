<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>구독 정보 입력</title>
    <style>
        body {
            box-sizing: border-box;
            background-color: rgb(255, 252, 221);
        }

        .header {
            padding: 20px;
            position: relative;
        }

        .footer>* {
            background-color: rgb(255, 216, 131);
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

        .form-check {
            display: inline-block;
        }

        .class-body {
            padding: 20px;
            font-size: 25px;
            width: 600px;
        }

        .class-body div[class|=col] {
            padding: 20px;
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <!-- 헤더 시작 -->
        <div class="row justify-content-center header">
            <div class="col-lg-4 col-12">
                <img src="images/project_logo.PNG" class="d-block w-100" id="main-logo">
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
                                    <a class="nav-link" href="/product.pro">제품 보기</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/inquiry.iq?currentPage=1">고객센터</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/mypage.my">마이페이지</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/review.bo?currentPage=1">리뷰</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/logout.mem">로그아웃</a>
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

        <!-- 바디 -->
        <div class="container class-body">
            <form action="/subscribeInput.sub" method="post" id="subscribe-input-form">
                <div class="row">
                    <div class="row">
                        ${petDto.getPetName()} 에게 가장 어울리는 사료는 ${productName} 입니다.
                    </div>
                    <div class="col-12">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="subscribeTypeSelect" value="1" checked/>1개월 구독
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="subscribeTypeSelect" value="3"/>3개월 구독
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="subscribeTypeSelect" value="6"/>6개월 구독
                        </div>
                    </div>
                    <input type="text" name="subscribeType" id="subscribe-type" style="display: none;">
                    
                    <input type="text" name="productCode" value="${productCode}" style="display: none;">
                    
                    <input type="text" name="petName" value="${petDto.getPetName()}" style="display: none;">
                    <input type="text" name="petAge" value="${petDto.getPetAge()}" style="display: none;">
                    <input type="text" name="petAllergy" value="${petDto.getPetAllergy()}" style="display: none;">
                    <input type="text" name="petWeight" value="${petDto.getPetWeight()}" style="display: none;">
                    <input type="text" name="petKind" value="${petDto.getPetKind()}" style="display: none;">
                    <input type="text" name="petType" value="${petDto.getPetType()}" style="display: none;">
                    
                    <div class="col-12">
                        <button type="button" class="btn btn-primary" id="button-pay">결제하기</button>
                        <button type="button" class="btn btn-secondary" id="button-back">뒤로가기</button>
                    </div>
                </div>
            </form>
        </div>
        <!-- 여기까지 바디 -->

        <!-- 풋터 -->
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
                    <img src="images/facebook_icon.png" style="border-color: lightblue;">
                    <img src="images/instagram_icon.png" style="border-color: lightblue;">
                    <img src="images/youtube_icon.png" style="border-color: lightblue;">
                </ul>
                <ul class="ft-ul">
                    <li><strong>고객센터</strong></li>
                    <li style="height: 8px;"></li>
                    <li>오전 10시부터 오후 6시까지</li>
                    <li>토요일, 일요일, 공휴일 휴무</li>
                </ul>
            </div>
        </div>
        <!-- 여기까지 풋터 -->
    </div>
    <script>
        function getSubscribeType() {
            const petTypeSelect = document.getElementsByName('subscribeTypeSelect');
            petTypeSelect.forEach((elem) => {
                if (elem.checked) {
                    document.getElementById('subscribe-type').value = elem.value;
                }
            })
        }
        
        console.log(isValidInput())

        document.getElementById('button-pay').addEventListener('click', () => {
            getSubscribeType();
            document.getElementById('subscribe-input-form').submit();
        })
    </script>
</body>
</html>