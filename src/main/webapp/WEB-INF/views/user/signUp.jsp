<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Title</title>

    <link type="text/css" rel="stylesheet" href="/resources/css/sign/signUp1.css"/>
    <link type="text/css" rel="stylesheet" href="/resources/css/sign/signUp2.css"/>

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


        .n-member-area{
            max-width: 380px;
        }
    </style>
</head>
<body>


<div class="n-member-area form-area">
    <form class="formBox" name="joinForm" id="joinForm" method="POST" action="/signUpPro">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <%--    <input type="hidden" name="checkId" value="0">--%>
        <%--    <input type="hidden" name="checkPassword" value="0">--%>
        <%--    <input type="hidden" name="checkConfirmPassword" value="0">--%>
        <%--    <input type="hidden" name="checkEmail" value="0">--%>
        <%--    <input type="hidden" name="checkRecommendMemberId" value="0">--%>
        <%--    <input type="hidden" name="checkPhoneNumber" value="0">--%>
        <%--    <input type="hidden" id="joinToken" name="joinToken" value="6610dd2a3f237a40b960f55d09bddf547348d869">--%>
        <%--    <input type="hidden" id="referer" name="referer" value="https://www.musinsa.com/app/">--%>
        <%--    <input type="hidden" name="eventToken" value="">--%>
        <%--    <input type="hidden" name="snsToken" value="">--%>
        <%--    <input type="hidden" id="partnerCode" name="partnerCode" value="">--%>
        <%--    <input type="hidden" name="eventPage" value="">--%>
        <%--    <input type="hidden" name="eventCode" value="">--%>
        <%--    <input type="hidden" name="returnUrl" value="">--%>

        <br>
        <br>
        <h6>???Dbelle Mall???</h6>
        <br>
        <br>

        <!-- Join Form -->
        <div class="join-form">
            <div class="n-form-set">
                <label for="id" class="n-form-label">?????????
                    <%--<span class="essential">?????? ??????</span>--%>
                </label>
                <input type="text" class="n-input input" id="id" name="id" placeholder="????????? ??????(5~11???)" minlength="5"
                       maxlength="11">
                <button type="button" class="check-duplication" id="checkId">????????????</button>
                <p class="n-validation" id="hLayerid"></p>
            </div>

            <div class="n-form-set">
                <label for="pass" class="n-form-label">????????????
                    <%--<span class="essential">?????? ??????</span>--%>
                </label>
                <div class="n-form-icon">
                    <input type="password" class="n-input input" id="pass" name="pass" minlength="8"
                           autocomplete="new-password" placeholder="????????????(??????,??????,???????????? ?????? ??????8???)">
                    <p class="n-validation" id="passwordValidMessage"></p>
                    <button type="button" class="btn" onclick="togglePassword('password', this);">
                        <i class="ic-30-solid-show ic-gray5">???????????? ??????</i>
                    </button>
                </div>

                <div class="n-form-icon">
                    <input type="password" class="n-input input" id="passCheck" name="passCheck"
                           autocomplete="new-password" minlength="8" placeholder="???????????? ??????">
                    <p class="n-validation" id="passwordConfirmValidMessage"></p>
                    <button type="button" class="btn" onclick="togglePassword('confirmPassword', this);">
                        <i class="ic-30-solid-show ic-gray5">???????????? ??????</i>
                    </button>
                </div>
            </div>

            <div class="n-form-set">
                <label for="email" class="n-form-label">?????????
                    <%--<span class="essential">?????? ??????</span>--%>
                </label>
                <div class="n-form-layer" id="emailFromLayer">
                    <input type="email" class="n-input input" id="email" name="email" maxlength="50" placeholder="?????????"
                           autocomplete="off" value="">
                    <p class="n-validation" id="hLayeremail"></p>
                </div>
            </div>

            <div class="n-form-set">
                <label for="address" class="n-form-label">??????</label>
                <input type="text" class="n-input" minlength="4" maxlength="17" id="address" name="address"
                       placeholder="?????? ??????" value="">
                <p class="n-validation" id="hLayerRecommendMemberId"></p>
            </div>


            <div id="agreementDivArea" class="agreement">
                <div>
                    <input type="checkbox" class="n-check" id="checkAll">
                    <label for="checkAll" class="all">?????? ????????????</label>
                </div>
                <div>
                    <input type="checkbox" class="n-check agree-item required-agree-item" id="agreeCheckbox"
                           name="agreeCheckbox">
                    <label for="agreeCheckbox">???????????? ?????? ????????????(??????)</label>
                    <button type="button" class="link" onclick="privacyAgreeUsagePopBtnClickHandler()">????????????</button>
                </div>

                <div>
                    <input type="checkbox" class="n-check agree-item required-agree-item" id="useTermsCheckbox"
                           name="useTermsCheckbox">
                    <label for="useTermsCheckbox">???Dbelle Mall??? ????????????(??????)</label>
                    <button type="button" class="link" onclick="serviceAgreementPopBtnClickHandler()">????????????</button>
                </div>

                <div>
                    <input type="checkbox" class="n-check agree-item optional-agree-item" id="marketingReceiveAgreeYn"
                           name="marketingReceiveAgreeYn">
                    <label for="marketingReceiveAgreeYn">????????? ?????? ??? ????????? ?????? ?????? ??????(??????)</label>
                    <button type="button" class="link" onclick="marketingAgreementPopBtnClickHandler()">????????????</button>
                </div>
                <div>
                    <input type="checkbox" class="n-check agree-item required-agree-item" id="ageAgreeCheckbox"
                           name="ageAgreeCheckbox">
                    <label for="ageAgreeCheckbox">??? 14??? ?????? ?????? ??????(??????)</label>
                </div>
            </div>

        </div>
        <div id="joinBtnDiv" class="member-btn">
            <button type="submit" id="joinBtn" class="n-btn btn-primary disabled">?????????????????? ????????????</button>
        </div>

        <br>
        <p class="member-info">??????????????? ????????? ??????, ????????? ???????????? ?????? ???????????? ??? ????????????.</p>
        <button type="button" class="n-link gtm-catch-click" onclick="moveBuyNonMember();" data-gtm-cd-23="not_member"
                data-gtm-cd-19="button" data-gtm-cd-20="/member/join" data-gtm-cd-21="2" data-gtm-category="not_member"
                data-gtm-action="client.click" data-gtm-label="?????????????????????">
            ????????? ????????????
        </button>
    </form>
</div>
</body>
</html>


