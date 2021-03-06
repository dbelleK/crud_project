package com.example.crud.controller;

import com.example.crud.domain.*;
import com.example.crud.repository.NoticeRepository;
import com.example.crud.service.FileService;
import com.example.crud.service.NoticeService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class NoticeController {

    private final NoticeService noticeService;
    private final NoticeRepository noticeRepository;

    private final FileService fileService;

    public static final int PAGE_SIZE = 5;

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //문의하기
    @PostMapping("/writePro")
    public String writePro(CommonNotice commonNotice, MultipartFile file) throws Exception {

       /*파일이 있으면 파일 출력, 없으면 없는 대로 출력*/
        if (file != null){
            commonNotice.setCommonNoticeFile(fileService.fileUpload(file));
        }

        //글작성,수정하기
        if(commonNotice.getCommonContentIdx() != 0){
            // update
            noticeService.updateQuestions(commonNotice);

        }else {
            // insert
            noticeService.writeUserInfo(commonNotice);
        }

        return "redirect:/questions";
    }

    //삭제하기
    @GetMapping("/deletePro")
    public String deletePro(int commonContentIdx){
        noticeService.deleteQuestions(commonContentIdx);
        return "redirect:/questions";
    }

    //리뷰하기
    //글작성,수정하기
    @PostMapping("/reviewPro")
    public String reviewPro(CommonNotice commonNotice){

        if(commonNotice.getCommonContentIdx() != 0){
            // update
            noticeService.updateReview(commonNotice);

        }else {
            // insert
            noticeService.reviewsUserInfo(commonNotice);
        }

        return "redirect:/review";
    }

    //삭제하기
    @GetMapping("deletePro2")
    public String deletePro2(int commonContentIdx){
        noticeService.deleteReview(commonContentIdx);
        return "redirect:/review";
    }


    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    //쓴 글 내용 표시하기

    //문의하기
    //http://localhost8082/questions
    @RequestMapping(path = "questions")
    public ModelAndView questions(Model model, @RequestParam(defaultValue = "1") int pages) {
        // 등록된 게시판 불러오기
        List<Content> contents= noticeService.appearNoticeInfo(pages);
        // 모델에 담기
        model.addAttribute("contents", contents);

        //페이징처리
        Page pageCount = noticeService.getPageCount(pages);
        //모델에 담기
        model.addAttribute("pageCount",pageCount);

        return new ModelAndView("/notice/questions");
    }

    //리뷰하기
    //http://localhost8082/review
    @RequestMapping(path = "review")
    public ModelAndView review(@RequestParam(defaultValue = "1") int page, Model model) {
        // 등록된 게시판 불러오기
        // 모델에 담기

        //페이징 처리
        PageInfo pageInfo = new PageInfo(page, PAGE_SIZE);
        pageInfo.setItemCountTatal(noticeRepository.getPageCountReview());
        List<Reviews> reviews= noticeService.appearNoticeReviewsInfo(pageInfo);
        //모델에 담기
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("reviews", reviews);

        return new ModelAndView("/notice/review");
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    //idx연결 - 해당 idx로 확인되어, 글 누르면 그 해당글 보이기
    //http://localhost8082/questions-write-form
    @RequestMapping(path = "questions-write-form")
    public ModelAndView questionsWriteForm(int contentIdx) {

        //Content의 idx를 이용하여 idx,subject,text를 CommonNotice idx,subject,text에 저장
        Content contents= noticeService.getContentInfo(contentIdx);
        CommonNotice commonNotice = new CommonNotice();
        if (contents != null){
            commonNotice.setCommonContentIdx(contents.getContentIdx());
            commonNotice.setCommonNoticeSubject(contents.getContentSubject());
            commonNotice.setCommonNoticeText(contents.getContentText());
            commonNotice.setCommonNoticeFile(contents.getContentFile());
        }
        //commonNotice로 보내기
        return new ModelAndView("/notice/questions_write_form")
                .addObject("commonNotice",commonNotice);
    }

    //http://localhost8082/review-write-form
    @RequestMapping(path = "review-write-form")
    public ModelAndView reviewWriteForm(int reviewsIdx) {

        //Reviews idx를 이용하여 idx,subject,text를 CommonNotice idx,subject,text에 저장
        Reviews reviews= noticeService.getReviewsInfo(reviewsIdx);
        CommonNotice commonNotice = new CommonNotice();
        if (reviews != null){
            commonNotice.setCommonContentIdx(reviews.getReviewsIdx());
            commonNotice.setCommonNoticeSubject(reviews.getReviewsSubject());
            commonNotice.setCommonNoticeText(reviews.getReviewsText());
        }
        //commonNotice로 보내기
        return new ModelAndView("/notice/review_write_form")
                .addObject("commonNotice",commonNotice);
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    @RequestMapping(path = "write-base")
    public ModelAndView writeBase() {
        return new ModelAndView("notice/write_base");
    }

    //새로운 글 작성 뷰 보이기

    @RequestMapping(path = "questions-write-form-new")
    public ModelAndView questionsWriteForm() {

        return new ModelAndView("/notice/questions_write_form");

    }

    @RequestMapping(path = "review-write-form-new")
    public ModelAndView reviewsWriteForm() {

        return new ModelAndView("/notice/review_write_form");

    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




}
