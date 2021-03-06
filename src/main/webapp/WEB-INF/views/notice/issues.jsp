<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<jsp:include page="../../layout/header.jsp">
    <jsp:param name="pageName" value="header"/>
</jsp:include>

<link rel="stylesheet" href="/resources/css/notice/notice1.css">

<div class="community_content__qACrW">
    <div class="community_header__AdorW">
        <div class="Header_container__HGW4p">
            <div class="board_title">
                <strong>공지사항</strong>
                <p>
                </p>
                <h3>공지사항을 정독해주세요.</h3>
                <h3>공지사항====>>관리자페이지에서 다루기</h3>
            </div>

        </div>
    </div>
    <div class="community_tools__I9vJo">
        <div class="Tools_container__8l_zD Tools_withFilter___gLvH">
            <div class="Tools_searchRow__TVWM5">
                <div class="Tools_searchWrapper__TDK0l">
                </div>
            </div>
            <div class="Tools_filters__OB5Q0">
            </div>
        </div>
    </div>

    <div class="community_questions__XzDam">
        <div>
            <div class="List_questionBox__5hZiu">
                <c:forEach var='obj' items="${contents}">
                    <div class="List_questionWrapper__49Ukv">
                        <div class="List_question__yvi1N">
                            <div class="ListItem_container__aU8Hn ListItem_regular__1_GMg ListItem_large__k18OQ">
                                <div class="ListItem_contents__nde6Z">
                                    <a role="button" class="ListItem_title__QygUT" tabindex="0"
                                       href="view?boardId=363&amp;userId=44">
                                                        <span class="ListItem_new__FQ3iR">
                                                            <i class="fa-regular fa-clipboard"></i>
                                                        </span>
                                        <span class="ListItem_new__FQ3iR">${ obj.contentSubject}</span>

                                    </a>
                                </div>
                                <div class="ListItem_profile__aJl52">
                                    <button type="button">
                                        <div class="Profile_container___j_Y3">
                                            <p class="Profile_name__3AVi2">${ user.email }</p>
                                            <p class="Profile_time__vpz_O">${ obj.contentDate }</p>
                                        </div>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>


            </div>
        </div>
    </div>

    <div class="community_pagination__V9VQ1">

        <div class="Pagination_container__SunX5">


            <div class="Pagination_pageWrapper__P796x">


                <a href="/cs/faq?page=1" class="Pagination_page__T9uPQ Pagination_selected__AWwCP">1</a>


                <a href="/cs/faq?page=2" class="Pagination_page__T9uPQ">2</a>


                <a href="/cs/faq?page=3" class="Pagination_page__T9uPQ">3</a>


                <a href="/cs/faq?page=4" class="Pagination_page__T9uPQ">4</a>


                <a href="/cs/faq?page=5" class="Pagination_page__T9uPQ">5</a>


                <a href="/cs/faq?page=6" class="Pagination_page__T9uPQ">6</a>


            </div>


            <a class="Pagination_nextButton__Right" href="faq?page=2">
                <i class="fa-solid fa-angle-right"></i>
            </a>
            <a class="Pagination_lastButton__hGkMG" href="faq?page=6"><span
                    class="Pagination_buttonText__KfRX8">Last</span></a>


        </div>
    </div>
</div>


<jsp:include page="../../layout/footer.jsp">
    <jsp:param name="pageName" value="footer"/>
</jsp:include>