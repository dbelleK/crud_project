<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Title</title>

    <link type="text/css" rel="stylesheet" href="/resources/css/sign/signUp1.css"/>
    <link type="text/css" rel="stylesheet" href="/resources/css/sign/signUp2.css"/>
    <%--    <link type="text/css" rel="stylesheet" href="/resources/css/sign/login.css"/>--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <%--부트스트랩 CDN--%>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <style>

        body {
            background: #f2d3d3 url(https://static.msscdn.net/ui/build/m/img/old/bg_join.gif?v=20220323162104) repeat-y 50% 0;
            font-size: 14px;
            font-family: '-apple-system', HelveticaNeue, Roboto, 'Noto Sans KR', helvetica, Gulim, sans-serif;
            line-height: 1.5;
            color: #000;
            min-height: 100%;
        }

        h6 {
            font-size: 30px;
            color: #f56a82;
            text-align: center;
        }

        .findIdPassword{
            display: flex;
            /*margin-right: 15px;*/
            justify-content: end;
        }
        .findIdPassword > button:first-child{
            margin-right: 15px;
        }

    </style>
</head>

<body>
<div class="n-member-area form-area">
    <!-- Container -->
    <div class="container login" role="main">

        <br>
        <br>
        <h6>♥Dbelle Mall♥</h6>
        <br>
        <br>

        <section class="content content--no-interval">
            <!-- tab -->
            <nav class="MCommonTabUnderline">
                <a href="javascript:void(0);" id="login-tab"
                   class="MCommonTabUnderline__button MCommonTabUnderline__button--active">가입 회원 </a>
                <a href="javascript:void(0);" id="buy-tab" class="MCommonTabUnderline__button"
                   data-popup-open="loginBottomsheetFix" style="">비회원 구매하기</a>
                <a href="javascript:void(0);" id="buy-search-tab" class="MCommonTabUnderline__button"
                   style="display: none;">비회원 주문 조회</a>
            </nav><!-- //tab -->
            <!-- login-member -->
            <div class="login-member">

                <form name="loginform" class="login-form" action="/loginPro" method="post">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <div class="login-member__form">
                        <%--                    <input type="hidden" id="cipherKey" name="cipherKey" value="a1860575d3c51365ee7edfbe9aa545b5">--%>
                        <%--                    <input type="hidden" id="cipherVersion" name="cipherVersion" value="V1">--%>
                        <%--                    <input type="hidden" id="csrfToken" name="csrfToken"--%>
                        <%--                           value="a1860575d3c51365ee7edfbe9aa545b5eb4f8964">--%>
                        <%--                    <input type="hidden" id="eventPage" name="eventPage" value="">--%>
                        <%--                    <input type="hidden" id="eventCode" name="eventCode" value="">--%>
                        <%--                    <input type="hidden" id="refererFromLoginPage" name="referer"--%>
                        <%--                           value="https://store.musinsa.com/app/order/order_form">--%>
                        <%--                    <input type="hidden" id="encryptMemberId" name="encryptMemberId">--%>
                        <%--                    <input type="hidden" id="encryptPassword" name="encryptPassword">--%>
                        <%--                    <input type="hidden" id="isCheckGoogleRecaptcha" name="isCheckGoogleRecaptcha" value="false">--%>

                        <div class="login-input">
                            <div class="login-input__wrap">
                                <input type="text" name="email" class="login-input__input" title="이메일 입력"
                                       placeholder="이메일">
                                <button type="button" class="login-input__button-clear" style="display:none;"
                                        onclick="clearInputValue(this);">
                                </button>
                            </div>
                        </div>

                        <div class="login-input">
                            <div class="login-input__wrap">
                                <input type="password" name="pass" class="login-input__input" title="비밀번호 입력"
                                       placeholder="비밀번호">
                                <button type="button" class="login-input__button-clear" style="display:none;"
                                        onclick="clearInputValue(this);">
                                </button>
                                <%--                            <button type="button" class="login-input__button-eye" aria-label="비밀번호 보이기"--%>
                                <%--                                    onclick="toggleInputType(this);"></button>--%>
                            </div>
                        </div>
                    </div>

                    <div class="login-button login-button--static">
                        <button type="submit" class="login-button__item login-button__item--black">로그인</button>
                    </div>

                    <div class="login-member__util">
                        <div class="login-checkbox login-member__util__login-auto">
                            <input type="checkbox" id="autologin" name="autologin" value="1"
                                   class="blind login-member__util__login-auto__checkbox">
                            <label for="autologin" id="labelAutoLogin"
                                   class="login-checkbox__label login-member__util__login-auto__label"
                                   data-tooltip="login-member__util__login-auto__tooltip">자동 로그인
                            </label>
                            <div id="tooltipAutoLogin" class="login-member__util__login-auto__tooltip">개인 정보 보호를 위해 본인
                                기기에서만 이용해주세요.
                            </div>
                        </div>
                        <p></p>
                        <p></p>

                        <%--                    <ul class="login-member__util__list">--%>
                        <%--                        <li class="login-member__util__item">--%>
                        <%--                            <a id="id-search" href="#" class="gtm-catch-click" data-gtm-cd-23="login_navi"--%>
                        <%--                               data-gtm-cd-19="button" data-gtm-cd-20="/login" data-gtm-cd-21="1"--%>
                        <%--                               data-gtm-category="login_navi" data-gtm-action="client.click" data-gtm-label="아이디찾기">아이디 찾기</a>--%>
                        <%--                        </li>--%>

                        <%--                        <li class="login-member__util__item">--%>
                        <%--                            <a id="pw-search" href="#" class="gtm-catch-click" data-gtm-cd-23="login_navi"--%>
                        <%--                               data-gtm-cd-19="button" data-gtm-cd-20="/login" data-gtm-cd-21="1"--%>
                        <%--                               data-gtm-category="login_navi" data-gtm-action="client.click" data-gtm-label="비밀번호찾기">비밀번호 찾기</a>--%>
                        <%--                        </li>--%>
                        <%--                    </ul>--%>


                        <!-- Button trigger modal -->
                        <div class="findIdPassword">
                            <button type="button" class="findId" data-toggle="modal" data-target="#findIdModal">
                                아이디 찾기
                            </button>
                            <!-- Button trigger modal -->
                            <button type="button" class="findPassword" data-toggle="modal" data-target="#findPasswordModal">
                                비밀번호 찾기
                            </button>
                        </div>

                        <p></p>
                        <p></p>

                        <!-- Modal #findIdModal  -->
<%--                        <div class="modal fade" id="findIdModal" tabindex="-1" role="dialog" aria-labelledby="findIdModal" aria-hidden="true">--%>
<%--                            <div class="modal-dialog">--%>
<%--                                <div class="modal-content">--%>
<%--                                    <div class="modal-body">--%>
<%--                                        <div class="Popup__contentWrapper" id="find-id-modal">--%>

<%--                                            <div class="PopupGeneral PopupGeneral__iconPosition--top PopupGeneral__hasTitle ">--%>

<%--                                                <button class="PopupGeneral__contents--iconTop">--%>
<%--                                                    <i class="fa-solid fa-unlock-keyhole"></i>--%>
<%--                                                </button>--%>
<%--                                                <div class="PopupGeneral__contents--title">--%>
<%--                                                    <p>--%>
<%--                                                    <p class="popupChangePW__title">아이디 재설정하기</p>--%>
<%--                                                    </p>--%>
<%--                                                </div>--%>
<%--                                                <div class="PopupGeneral__contents--body">--%>
<%--                                                    <p class="popupChangePW__description">이메일로 아이디 재설정 링크를 보내드려요.</p>--%>
<%--                                                    <input id="find-email" autocomplete="off"--%>
<%--                                                           class="popupChangePW__input"--%>
<%--                                                           placeholder="가입시 등록한 이메일을 입력해 주세요.">--%>
<%--                                                </div>--%>
<%--                                            </div>--%>

<%--                                            </p>--%>

<%--                                            <div class="PopupGeneral__btns">--%>
<%--                                                <div class="SignForm__submitBtnWrapper">--%>
<%--                                                    <span id="vaildEmail"></span>--%>
<%--                                                    <button type="button" id="sendEmail"--%>
<%--                                                            class="ButtonGeneral SignForm__submitBtn ButtonGeneral__orange">--%>
<%--                                                        <span>메일로 보내기</span></button>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>

<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>


                        <!-- Modal #findPasswordModal  -->
                        <div class="modal fade" id="findPasswordModal" tabindex="-1" role="dialog"
                             aria-labelledby="findPasswordModal" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-body">
                                        <div class="Popup__contentWrapper" id="find-password-modal">

                                            <div class="PopupGeneral PopupGeneral__iconPosition--top PopupGeneral__hasTitle ">

                                                <button class="PopupGeneral__contents--iconTop">
                                                    <i class="fa-solid fa-unlock-keyhole"></i>
                                                </button>
                                                <div class="PopupGeneral__contents--title">
                                                    <p>
                                                    <p class="popupChangePW__title">비밀번호 재설정하기</p>
                                                    </p>
                                                </div>
                                                <div class="PopupGeneral__contents--body">
                                                    <p class="popupChangePW__description">이메일로 비밀번호 재설정 링크를 보내드려요.</p>
                                                    <input id="find-email" autocomplete="off" class="popupChangePW__input" placeholder="가입시 등록한 이메일을 입력해 주세요.">
                                                    <span></span>
                                                </div>
                                            </div>

                                            </p>

                                            <div class="PopupGeneral__btns">
                                                <div class="SignForm__submitBtnWrapper">
                                                    <p id="vaildEmail"></p>
                                                    <button type="button" id="sendEmail"
                                                            class="ButtonGeneral SignForm__submitBtn ButtonGeneral__orange">
                                                        <span>메일로 보내기</span></button>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </form>

                <div class="Sns__login">
                    <span>SNS 간편 로그인</span>
                    <div type="button" class="Sns__kakao" onclick="kakaoLogin()">
                        <img src="/resources/img/kakao-talk.png"/>
                    </div>
                </div>

                <br>
                <br>
                <div>
                    <button type="submit">회원가입</button>
                </div>
                <c:if test="${error}">
                    <p style="color: red"><strong>아이디(email)</strong> 혹은 <strong>패스워드</strong>가 올바르지 않습니다.</p>
                </c:if>
            </div>

            <%--비회원구매하기-----------------------------------------------------------------------------------------------%>
            <div class="login-nonmember buy" id="nonMemberOrder" data-tab="nonMemberOrder" style="display: none;">
                <div class="login-nonmember__clause" tabindex="0">비회원정보수집 동의
                    <br>비회원 개인정보보호정책은 비회원으로 주문하는 고객님의 개인정보 보호를 위하여 무신사가 실시하는 개인정보 수집의 목적과 그 정보의 정책에 관한 규정입니다.
                    <br>
                    <br>제1조 개인정보 수집 범위
                    <br>1.물품 구매 시
                    <br>필수항목: 구매자 정보(성명, 전화번호, 휴대전화 번호, 이메일) 수령자 정보(성명, 전화번호, 휴대전화번호, 주소)
                    <br>2.환불 요청 시
                    <br>필수항목: 환불계좌
                    <br>
                    <br>제2조 개인정보 수집 목적 및 이용목적
                    <br>무신사((주)무신사)는 고객님께서 비회원으로 재화 혹은 용역을 주문하거나 각종 서비스를 이용하는데 있어, 원활한 주문 및 서비스 접수, 물품 배송, 대금 결제 및 편리하고
                    유익한 맞춤정보를 제공하기 위한 최소한의 정보를 수집합니다.
                    <br>
                    <br>1.e-mail, 전화번호 : 고지의 전달. 불만처리나 주문/배송정보 안내 등 원활한 의사소통 경로의 확보.
                    <br>2.성명, 주소 : 고지의 전달, 청구서, 정확한 상품 배송지의 확보.
                    <br>3.은행계좌번호, 신용카드번호: 유료정보에 대한 이용 및 상품구매에 대한 결제
                    <br>4.전화번호, 휴대전화번호 : 상품구매 전/후 만족도조사, 회원가입권유(포인트 또는 적립금 지급 등)및 영업 목적 전화 및 SMS발송
                    <br>
                    <br>비회원 주문 시 제공하신 모든 정보는 상기 목적에 필요한 용도 이외로는 사용되지 않습니다.
                    <br>단, 이용자의 기본적 인권 침해의 우려가 있는 민감한 개인정보(인종 및 민족, 사상 및 종교, 출신지 및 본적지, 정치적 성향 및 범죄기록, 건강상태 등)는 수집하지
                    않습니다.
                    <div style="font-size: 14px; font-weight: bold;">
                        <br>제3조 개인정보의 보유기간 및 이용기간
                        <br>고객의 개인정보는 다음과 같이 개인정보의 수집목적 또는 제공받은 목적이 달성되면 파기됩니다. 단, 상법 등 관련법령의 규정에 의하여 다음과 같이 거래 관련 권리 의무
                        관계의 확인 등을 이유로 일정기간 보유하여야 할 필요가 있을 경우에는 일정기간 보유합니다.
                        <br>1.계약 또는 청약철회 등에 관한 기록 : 5년
                        <br>2.대금결제 및 재화등의 공급에 관한 기록 : 5년
                        <br>3.소비자의 불만 또는 분쟁처리에 관한 기록 : 3년
                    </div>

                    <br>제4조
                    <br>동의 거부시 불이익 귀하는 개인정보 수집 및 이용 등에 관해 동의하지 않을 권리가 있습니다. 다만, 필수수집 동의를 하지 않을 경우 구매가 제한될 수 있습니다.<br>
                    <br>고객의 동의를 받아 보유하고 있는 거래정보 등을 고객께서 열람을 요구하는 경우 무신사는 지체 없이 그 정보를 열람·확인 할 수 있도록 조치합니다.
                </div>

                <div class="login-checkbox login-nonmember__checkbox">
                    <input type="checkbox" id="checkMemberAgree" class="blind">
                    <label for="checkMemberAgree" class="login-checkbox__label login-nonmember__checkbox__label">비회원
                        구매약관 동의 (필수)</label>
                </div>

                <!-- button -->
                <div class="login-button login-button--static gtm-catch-click">
                    <button type="button" class="login-button__item login-button__item--black" id="btnNonMemberOrder"
                            data-gtm-cd-23="non_member" data-gtm-cd-19="button" data-gtm-cd-20="/login"
                            data-gtm-cd-21="2"
                            data-gtm-category="non_member" data-gtm-action="client.click" data-gtm-label="비회원구매하기">구매하기
                    </button>
                </div>
                <br>
                <br>
                <div>
                    <button type="submit">회원가입</button>
                </div>
            </div>
        </section>
    </div>
</div>



<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript" src="/resources/js/kakaoLogin.js"></script>
<script type="text/javascript" src="/resources/js/findPasssword.js"></script>

</body>
</html>






