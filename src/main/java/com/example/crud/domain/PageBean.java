package com.example.crud.domain;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PageBean {

    // 최소 페이지 번호
    private int min;
    // 최대 페이지 번호
    private int max;
    // 이전 버튼의 페이지 번호
    private int prevPage;
    // 다음 버튼의 페이지 번호
    private int nextPage;
    // 전체 페이지 개수
    private int pageCnt;
    // 현재 페이지 번호
    private int currentPage;



}
