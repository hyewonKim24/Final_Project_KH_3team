<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../main/header.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <style>
        * {
            margin: 0;
        }

        body {
            width: 100%;
            height: 100%;
            position: relative;
            font-size: 14px;
            font-family: Noto Sans KR;
            line-height: 1.15;
            background-color: rgb(242, 242, 242);
        }

        a {
            text-decoration: none;
            color: #333333;
        }


        /* 본문 */
        .main {
            position: relative;
            width: 1200px;
            height: 100%;
            margin: 0 auto;
        }

        /*sidebar*/
        #pj_sidebar {
            width: 210px;
            height: 100%;
            padding-top: 20px;
            background-color: #f2f2f2;
            color: #333333;
            z-index: 10;
            position: fixed;
            overflow-x: hidden;
            margin: 0 auto;
        }

        #pj_sidebar>ul {
            padding: 10px 0;
        }

        #pj_sidebar>ul>li {
            height: 33px;
            line-height: 33px;
            padding-left: 10px;
            font-weight: 400;
            list-style: none;
        }

        #pj_sidebar>ul>li:hover {
            background-color: #e7e7e7;
        }

        #pj_sidebar>ul>li>a {
            display: block;
            text-decoration: none;
            color: #333333;
        }

        #pj_sidebar>ul>li>a>img {
            margin-right: 5px;
            vertical-align: auto;
        }

        /* 프로젝트 글 */
        .contents {
            position: relative;
            width: 700px;
            height: 100%;
            margin: 0 20px;
            left: 210px;
            box-shadow: 1px 1px 3px 1px #e7e7e7;
            float: left;
        }

        /* 글 쓰기 부분 */
        .write {
            border: 1px solid #dadbdb;
            min-height: 270px;
            box-sizing: border-box;
            background: #fff;
        }

        .writemenu {
            display: none;
        }

        .write .tabs {
            display: none;
        }

        .tabslabel {
            display: inline-block;
            padding: 15px 26.1px;
            font-weight: 600;
            text-align: center;
            color: #969696;
            width: 118px;
            font-size: 15px;
        }

        .write svg {
            width: 20px;
            height: 20px;
            margin: -5px 10px -5px -5px;
            stroke: #c0c0c0;
            stroke-width: 3%;
        }

        #line {
            border-top: 1px solid #dadbdb;
        }

        .tabslabel:hover {
            cursor: pointer;
        }

        .textbody {
            height: auto;
            margin-top: 10px;
            margin: 17px 25px;
        }

        .title {
            width: 100%;
            border-bottom: 1px solid #dadbdb;
            padding-bottom: 8px;
            margin-bottom: 12px;
        }

        .title_detail {
            border: none;
            width: 100%;
            height: 100%;
            font-size: 16px;
            font-weight: 700;
            font-family: Noto Sans KR;
        }

        .content_detail {
            border: none;
            width: 100%;
            min-height: 65px;
            font-size: 14px;
            overflow-y: hidden;
            font-family: Noto Sans KR;
        }

        .content_detail2 {
            border: none;
            width: 100%;
            min-height: 69px;
            font-size: 14px;
            overflow-y: hidden;
            font-family: Noto Sans KR;
        }

        .content_detail:focus,
        .title_detail:focus {
            outline: none;
        }

        .textfooter {
            height: 46px;
            border-top: 1px solid #dadbdb;
            /* border:1px solid red; */
            padding: 10px 20px;
            bottom: 0px;
            width: 658px;
            display: flex;
            justify-content: space-between;
            position: relative;
        }

        .textfooter_func {
            width: 24px;
            margin-right: 8px;
            margin-left: 5px;
            margin-top: 8px;
        }

        .textfooter_side {
            display: flex;
        }

        .public {
            min-width: 100px;
            border: 1px solid #dfe0e4;
            height: 36px;
            line-height: 32px;
            font-size: 12px;
            color: #545557;
            /* text-align: center; */
            font-weight: 700;
            background-color: #fff;
            border-radius: 3px;
            box-sizing: border-box;
            font-family: Noto Sans KR;
            position: relative;
            cursor: pointer;
        }

        .public span {
            margin-top: 0px;
            margin-left: 3px;
            position: absolute;
        }

        .public img {
            width: 20px;
            /* position:absolute; */
            margin-right: 2px;
            margin-top: 5px;
            margin-left: 5px;
        }

        .public_admin {
            min-width: 100px;
            border: 1px solid #dfe0e4;
            height: 36px;
            line-height: 32px;
            font-size: 12px;
            color: #545557;
            /* text-align: center; */
            font-weight: 700;
            background-color: #fff;
            border-radius: 3px;
            box-sizing: border-box;
            font-family: Noto Sans KR;
            position: relative;
            cursor: pointer;
        }

        .public_admin span {
            margin-top: 0px;
            margin-left: 3px;
            position: absolute;
        }

        .public_admin img {
            width: 20px;
            /* position:absolute; */
            margin-right: 2px;
            margin-top: 5px;
            margin-left: 5px;
        }

        .public_setting {
            position: absolute;
            top: 50px;
            right: -1px;
            z-index: 1000;
            width: 230px;
            text-align: left;
            border: 1px solid rgba(34, 35, 37, .2);
            border-radius: 2px;
            background: #fff;
            box-shadow: 1px -1px 4px 0 rgba(0, 0, 0, .15);
        }

        .public_setting_title {
            height: 29px;
            line-height: 27px;
            text-indent: 12px;
            font-size: 12px;
            color: #828385;
            font-weight: 400;
            border-bottom: 1px solid #dfe0e4;
        }

        .set_li {
            position: relative;
        }

        .set_li:hover {
            background-color: #f6f7f8;
        }

        .set_li_admin {
            position: relative;
        }

        .set_li_admin:hover {
            background-color: #f6f7f8;
        }

        .setimg {
            width: 23px;
            top: 14px;
            left: 7px;
            position: absolute;
        }

        .p_set_con strong {
            display: block;
            font-size: 12px;
            color: #545557;
        }

        .p_set_con {
            display: block;
            padding: 10px 0 0 40px;
            height: 55px;
            font-size: 11px;
            color: #828385;
            box-sizing: border-box;
            background-repeat: no-repeat;
            background-position: 11px 14px;
            cursor: pointer;
        }

        .writebtn {
            width: 80px;
            height: 36px;
            background-color: #5A3673;
            border-radius: 3px;
            color: #e7e7e7;
            border: none;
            font-family: Noto Sans KR;
            font-weight: 700;
            vertical-align: middle;
            margin-left: 5px;
            font-size: 14px;
        }

        .tabs:checked+.tabslabel svg {
            width: 20px;
            height: 20px;
            margin: -5px 10px -5px -5px;
            stroke-width: 6%;
            stroke: #F27781;
        }

        /*input 클릭시, label 스타일*/
        .tabs:checked+.tabslabel {
            color: #F27781;
        }

        #tab1:checked~#commonboard,
        #tab2:checked~#task,
        #tab3:checked~#schedule,
        #tab4:checked~#todo {
            display: block;
        }

        /* 글 작성 부분 */
        .boardHeader {
            height: 60px;
            padding: 25px 12px 0 25px;
        }

        .writeInfo {
            width: 200px;
            height: 40px;
            float: left;
        }

        .profileImg {
            width: 40px;
            float: left;
            margin-right: 25px;
        }

        .writer {
            height: 18px;
            font-size: 14px;
            font-weight: 700;
            padding-top: 5px;
        }

        .writeDate {
            font-size: 12px;
            font-weight: 400;
            padding-top: 5px;
            color: #c0c0c0;
        }

        .option {
            width: 60px;
            height: 40px;
            padding-top: 7px;
            margin: 0;
            float: right;
        }

        .fixNotice {
            width: 18px;
            margin-top: 3px;
            margin-right: 20px;
            float: left;
        }

        .editoption {
            width: 5px;
            height: 20px;
            margin-top: 3px;
        }

        .editDropdown {
            display: none;
            width: 145px;
            height: 65px;
            border: 1px solid #e7e7e7;
            box-sizing: border-box;
            font-size: 12px;
            float: right;
            margin-top: 6px;
        }

        .editDropdown ul {
            padding: 8px 0;
        }

        .editDropdown ul li {
            padding: 6px 15px;
        }

        .boardResult {
            width: 650px;
            padding: 7px 25px;
        }

        .replyCount {
            width: 650px;
            height: 25px;
            margin-top: 30px;
            font-size: 12px;
            color: #c0c0c0;
            text-align: right;
        }

        .threeBtn {
            width: 650px;
            height: 40px;
            line-height: 40px;
            padding: 0 25px;
            border-top: 1px solid #e7e7e7;
        }

        .threeBtn ul li {
            float: left;
        }

        .threeBtn ul li a {
            vertical-align: middle;
            padding-right: 30px;
            font-size: 12px;
            font-weight: 700;
            color: #787878;
        }
        
        /* 업무 부분  */
		.task-radio{
			display:none;
			margin:10px;
		}
		
		.task-radio + label{
			display: inline-block;
			margin: -5px;
			padding : 8px;
			background-color:#f5f5f5;
			border: 1px solid #ccc;
			font-size:13px;
			width: 70px;
			text-align: center;
			border-radius: 3px;
			cursor: pointer;
			color: #505050;
		}
		
		#task-radio-01:checked + label{
			background-color: #F27781;
			color:#fff;	
		}
		#task-radio-02:checked + label{
			background-color: #f17a19;
			color:#fff;	
		}
		#task-radio-03:checked + label{
			background-color:  #50b766;
			color:#fff;	
		}
		#task-radio-04:checked + label{
			background-color: #4aaefb;
			color:#fff;	
		}
		
		#task-icon01{
			margin:10px;
			
		}
		#task-01{
			display:inline-block;
			height: 50px;
			width: 650px;
			border:none;
			border-bottom: 1px solid #dadbdb;
		}
		.task-radio-wrap{
			position:absolute;
			display:inline-block;
			width: 350px;
			height: 30px;
			margin-left:10px;
			margin-top:10px;
		}
		.task-icon02{
			margin:12px;
			
		}
		#task-02{
			display:inline-block;
			height: 45px;
			width: 650px;
			border:none;
			border-bottom: 1px solid #dadbdb;
		}
		.task-res-wrap{
			position:absolute;
			display:inline-block;
			width: 350px;
			height: 30px;
			margin-left:10px;
			margin-top:7px;
		}
		.task-res{
			padding:5px;
			width: 150px;
			height: 20px;
			line-height: 25px;
			border: 1px solid #e7e7e7;
			border-radius: 5px;
		}
		
		.task-res-add-wrap{
			width: 200px;
			height: 100px;
			overflow: scroll;
			display:none;
			background-color: #fff;
			border: 1px solid #787878;
			border-radius: 5px;
			z-index: 999;
		    position: absolute;
   			 top: 33px;
		}
		.task-res-list{
			cursor: pointer;
		}
		.task-03{
			display:inline-block;
			height: 45px;
			width: 650px;
			border:none;
			border-bottom: 1px solid #dadbdb;
			z-index:-2;
		}
		.task-start-wrap{
			position:absolute;
			display:inline-block;
			width: 350px;
			height: 30px;
			margin-left:10px;
			margin-top:7px;
		}
		.task-schedule{
			padding:5px;
			width: 150px;
			height: 20px;
			line-height: 25px;
			border: 1px solid #e7e7e7;
			border-radius: 5px;
		}
		
		/* 업무 달성률 */
		.task-04{
			display:inline-block;
			height: 45px;
			width: 650px;
			border:none;
			border-bottom: 1px solid #dadbdb;
		}
		.task-rate-wrap{
			position:absolute;
			display:inline-block;
			width: 350px;
			height: 30px;
			margin-left:10px;
			margin-top:15px;
		}
		.workPrgrs {
		   display: block;
		   margin-top: 6px;
		   margin-bottom: -3px;
		   padding-bottom: 3px;
		   height: 20px;
    	}
    	
    	.workPrgrs_bg {
		    position: absolute;
		    width: 150px;
		    height: 14px;
		    border-radius: 3px;
		    background-color: #eaeaea;
		}
		.workPrgrs_bg .txt {
		    z-index: 1;
		    position: absolute;
		    left: 0;
		    right: 0;
		    text-align: center;
		    font-size: 10px;
		    line-height: 14px;
		    color: #111;
		}
		.workPrgrs_bg .bar {
		    display: block;
		    position: absolute;
		    top: 0;
		    left: 0;
		    bottom: 0;
		    border-radius: 3px;
		    background-color: #7099de;
		}
		.workPrgrs_bg .bar.percent0 {
		    right: 95%;
		}
		.pcnt0, .pcnt100, .pcnt20, .pcnt40, .pcnt60, .pcnt80 {
		    z-index: 100;
		    display: inline-block;
		    position: absolute;
		    top: 0;
		    bottom: -10px;
		    width: 20%;
		}
		
		.workPrgrs_bg .pcnt button {
		    position: relative;
		    display: block;
		    width: 36px;
		    height: 23px;
		    line-height: 21px;
		    font-size: 11px;
		    color: #fff;
		    text-align: center;
		    border: 0;
		    background: 0 0;
		}
		
		.workPrgrs_bg .pcnt {
		    z-index: 1;
		    display: none;
		    position: absolute;
		    top: 20px;
		    left: 100%;
		    margin-left: -18px;
		    width: 36px;
		    height: 23px;
		    line-height: 21px;
		    border-radius: 3px;
		    background-color: rgba(0, 0, 0, .6);
		}
		.pcnt0{
			cursor: pointer;
			display: inline-block;
			z-index:1000;
		}
		.pcnt20{
			cursor: pointer;
			display: inline-block;
			z-index:999;
		}
		.pcnt40{
			cursor: pointer;
			display: inline-block;
			width: 40%;
			z-index:998;
		}
		.pcnt60{
			cursor: pointer;
			display: inline-block;
			width: 60%;
			z-index:997;
		}
		.pcnt80{
			cursor: pointer;
			display: inline-block;
			width: 80%;
			z-index:996;
		}
		.pcnt100{
			cursor: pointer;
			display: inline-block;
			width: 100%;
			z-index:995;
		}
		
		
		
		/* 업무 우선순위 */
		.task-05{
			display:inline-block;
			height: 45px;
			width: 650px;
			border:none;
			border-bottom: 1px solid #dadbdb;
			margin-bottom: 15px;
		}
		.task-pri{
			width: 150px;
			line-height: 25px;
			border: 1px solid #e7e7e7;
			border-radius: 5px;
			background-color: none;
		}
		.task-pri-wrap{
			position:absolute;
			display:inline-block;
			width: 350px;
			height: 30px;
			margin-left:10px;
			margin-top:7px;
		
		}
		
		.task-pri-add-wrap{
			width: 150px;
			height: 90px;
			display:none;
			background-color: #fff;
			border: 1px solid #787878;
			border-radius: 5px;
			z-index: 999;
		    position: absolute;
   			 top: 33px;
		}


        /* 댓글 작성 부분 */
        .reply {
            width: 700px;
            padding: 10px 0;
            border-top: 1px solid #e7e7e7;
        }

        .replyMore {
            background-color: white;
            border: none;
            font-size: 14px;
            color: #5A3673;
            padding: 10px 15px 20px 15px;
        }

        .defaultReply {
            width: 670px;
            margin: 0 15px;
            padding-bottom: 10px;
        }

        .replayPfImg {
            width: 34px;
            margin-right: 20px;
            float: left;
        }

        .replayPfImg2 {
            width: 34px;
            margin-right: 20px;
            float: left;
        }

        .replyTitle {
            height: 13px;
            font-size: 13px;
            font-weight: 700;
            padding-right: 10px;
        }

        .replyDate {
            font-size: 13px;
            color: #c0c0c0;
        }

        .replyEdit {
            float: right;
        }

        .replyEdit a {
            color: #c0c0c0;
            font-size: 12px;
        }

        #replyResult {
            width: 643px;
            margin-top: 5px;
        }

        .replyFrom {
            margin: 10px 0 10px 15px;
        }

        .replyFrom input {
            width: 550px;
            height: 30px;
            margin: 5px 5px 5px 0;
            box-sizing: border-box;
            vertical-align: middle;
            border: 1px solid #c0c0c0;
        }

        #replyReg {
            width: 60px;
            height: 30px;
            background-color: #5A3673;
            border-radius: 3px;
            color: #e7e7e7;
            border: none;
            font-family: Noto Sans KR;
        }

        /* 우측 바 */
        .rightBar {
            position: absolute;
            width: 250px;
            height: 100%;
            background-color: #5A3673;
            left: 950px;
        }
        /*이전화면 버튼 div*/
        .rightBar #prevbtn {
            width: 250px;
            height: 60px;
            font-size: 14px;
            display: block;
            margin-bottom: 8px;
            line-height: 60px;
            color: #333333;
            font-weight: 700;
            border-top: 1px solid #fff;
            border-left: 1px solid #ececec;
            border-right: 1px solid #ececec;
            border-bottom: 1px solid #e0e0e0;
            border-radius: 3px;
            background-color: #fff;
            box-sizing: border-box;
        }

        .rightBar #prevbtn>.prevsvg {
            padding: 18px 0 0 30px;
            float: left;
            fill: #111111;
        }

        .rightBar>#rightbtns {
            clear: both;
            width: 250px;
            height: 70px;
            margin-bottom: 8px;
            border-left: 1px solid #ececec;
            border-right: 1px solid #ececec;
            border-bottom: 1px solid #e0e0e0;
            border-radius: 3px;
            background-color: #fff;
            text-align: center;
            color: #505050;
            font-weight: 500;
        }

        .rightBar>#rightbtns .rightbtn {
            float: left;
            width: 25%;
            padding: 15px 0;
        }

        /*우측 파일함,업무,일정,할일 아이콘 색,크기 통일*/
        .rightsvg {
            width: 23px;
            fill: #444444;
        }
        
        /*채팅 div*/
        #pjchat {
            width: 250px;
            height: 300px;
            background-color: #fff;
        }

        #pjchat>#pjmembox {
            height: 90%;
            overflow: hidden;
            padding: 10px 0;
        }

        /*scrollbar*/
        /* width */
        ::-webkit-scrollbar {
            width: 5px;
        }

        /* Track */
        ::-webkit-scrollbar-track {
            background: #e7e7e7;
        }

        /* Handle */
        ::-webkit-scrollbar-thumb {
            background: #a2a2a2;
            border-radius: 10px;
        }

        /* Handle on hover */
        ::-webkit-scrollbar-thumb:hover {
            background: #505050;
        }

        /*전체참여자*/
        .allpj_title {
            position: relative;
            padding-top: 6px;
            margin: 0 15px 10px 15px;
            height: 20px;
            font-size: 12px;
            color: #343538;
            font-weight: 700;
        }
        /*전체보기 버튼*/
        .allpjmem {
            display: block;
            position: absolute;
            top: 5px;
            right: 0;
            font-size: 12px;
            color: #676869;
            font-weight: 400;
        }
        /*타이틀 : 관리자,내부참여자 */
        .part-title {
            font-size: 12px;
            position: relative;
            padding-top: 8px;
            padding-bottom: 8px;
            min-height: 12px;
            margin: 0 15px;
            border-top: 1px solid #e9eaed;
        }
        /*타이틀 : 프로젝트 멤버 리스트 */
        #pjmemlist {
            height: 80%;
            overflow-x: hidden;
        }

        #pjchat>#pjmembox>#pjmemlist>ul>li {
            position: relative;
            width: 250px;
            height: 50px;
            padding: 8px 20px 8px 20px;
            box-sizing: border-box;
        }

        /*프로필사진*/
        .userimg {
            z-index: 20;
            position: relative;
            top: 0;
            left: 0;
            width: 32px;
            height: 32px;
            content: "";
            display: block;
            border-radius: 32px;
            float: left;
            box-shadow: inset 0 0 0 1px rgba(0, 0, 0, .05);
        }
        /*프로젝트 멤버 이름*/
        .pjusername {
            display: inline-block;
            width: 160px;
            text-overflow: ellipsis;
            white-space: nowrap;
            overflow: hidden;
            margin: 0px 0 0 10px;
            color: #969696;
            vertical-align: middle;
            margin-top: 7px;
        }
        /*우측 사이드 채팅 아이콘*/
        .chatsvg {
            position: absolute;
            top: 11px;
            right: 20px;
            width: 25px;
        }

        #chatbtn-fill {
            width: 18px;
            margin-top: 10px;
            transform: translateY(3px);
        }
        /*우측 하단 채팅 버튼*/
        #pjchatbox {
            width: 250px;
            height: 45px;
            position: relative;
            line-height: 40px;
            font-weight: 700;
            font-size: 14px;
            color: #333;
            text-align: center;
            border-top: 1px solid #d7d7d7;
            border-bottom: 1px solid #d7d7d7;
            border-radius: 0 0 0px 0px;
            background-color: #fff;
        }
        
        #pjchatbox>.pjchatboxsvg {
            position: absolute;
            top: 11px;
            right: 20px;
            width: 25px;
        }
    </style>
 
</head>

<body>
<!--     <div class="header">
        <div>헤더 들어갈 자리</div>
    </div> -->
    <div class="main">
        <nav id="pj_sidebar">
            <button type="button" id="new_pj_btn" onclick="">+&nbsp;새
                프로젝트</button>
            <ul>
                <li><a href="#">
                        <svg version="1.1" class="pj_btn" xmlns="http://www.w3.org/2000/svg"
                            xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 50 35"
                            style="enable-background: new 0 0 50 35;" xml:space="preserve">
                            <g>
                                <rect y="3" width="50" height="3" />
                                <rect y="17" width="50" height="3" />
                                <rect y="31" width="50" height="3" />
                            </g>
                        </svg> 전체 <span class="pj_sb_alarm">00</span>
                    </a></li>
        </nav>


        <div class="contents">
            <div class="wrap">
                <div class="write" id="write">
                    <input id="tab1" type="radio" name="tabs" class="tabs" checked>
                    <!--디폴트 메뉴-->
                    <label for="tab1" class="tabslabel"><svg version="1.1" id="Capa_1"
                            xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
                            y="0px" viewBox="0 0 60.017 60.017" style="enable-background:new 0 0 60.017 60.017;"
                            xml:space="preserve">
                            <path d="M59.144,3.731l-2.85-2.851c-1.164-1.161-3.057-1.162-4.221,0.001l-3.126,3.126H0v56h56V11.097l0.305-0.305l0,0l2.839-2.839
                       C60.308,6.789,60.308,4.895,59.144,3.731z M20.047,36.759l3.22,3.22l-4.428,1.208L20.047,36.759z M52.062,12.206L47.82,7.964
                       l1.414-1.414l4.243,4.242L52.062,12.206z M50.648,13.62L25.192,39.076l-4.242-4.242L46.406,9.378L50.648,13.62z M54,13.097v44.91H2
                       v-52h44.947L18.829,34.127l-0.188,0.188l-2.121,7.779l-1.226,1.226c-0.391,0.391-0.391,1.023,0,1.414
                       c0.195,0.195,0.451,0.293,0.707,0.293s0.512-0.098,0.707-0.293l1.226-1.226l7.779-2.123l26.351-26.35h0l0.447-0.447L54,13.097z
                        M57.73,6.539l-2.839,2.839l-4.243-4.243l2.839-2.839c0.384-0.384,1.009-0.383,1.393,0l2.85,2.85
                       C58.114,5.529,58.114,6.155,57.73,6.539z" />
                        </svg>글작성</label>
                    <input id="tab2" type="radio" name="tabs" class="tabs">
                    <label for="tab2" class="tabslabel"><svg version="1.1" xmlns="http://www.w3.org/2000/svg"
                            xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 59 59"
                            style="enable-background:new 0 0 59 59;" xml:space="preserve">
                            <g>
                                <path
                                    d="M52,21c-0.553,0-1,0.447-1,1v32H2V5h49v1c0,0.553,0.447,1,1,1s1-0.447,1-1V3H0v53h53V22C53,21.447,52.553,21,52,21z" />
                                <path d="M58.707,7.293c-0.391-0.391-1.023-0.391-1.414,0L27,37.586l-13.07-13.07c-0.391-0.391-1.023-0.391-1.414,0
        s-0.391,1.023,0,1.414l13.777,13.777C26.488,39.902,26.744,40,27,40s0.512-0.098,0.707-0.293l31-31
        C59.098,8.316,59.098,7.684,58.707,7.293z" />
                            </g>
                        </svg>업무</label>
                    <input id="tab3" type="radio" name="tabs" class="tabs">
                    <label for="tab3" class="tabslabel"><svg version="1.1" xmlns="http://www.w3.org/2000/svg"
                            xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 60 60"
                            style="enable-background:new 0 0 60 60;" xml:space="preserve">
                            <g>
                                <path d="M57,4h-7V1c0-0.553-0.447-1-1-1h-7c-0.553,0-1,0.447-1,1v3H19V1c0-0.553-0.447-1-1-1h-7c-0.553,0-1,0.447-1,1v3H3
		C2.447,4,2,4.447,2,5v11v43c0,0.553,0.447,1,1,1h54c0.553,0,1-0.447,1-1V16V5C58,4.447,57.553,4,57,4z M43,2h5v3v3h-5V5V2z M12,2h5
		v3v3h-5V5V2z M4,6h6v3c0,0.553,0.447,1,1,1h7c0.553,0,1-0.447,1-1V6h22v3c0,0.553,0.447,1,1,1h7c0.553,0,1-0.447,1-1V6h6v9H4V6z
		 M4,58V17h52v41H4z" />
                                <path d="M38,23h-7h-2h-7h-2h-9v9v2v7v2v9h9h2h7h2h7h2h9v-9v-2v-7v-2v-9h-9H38z M31,25h7v7h-7V25z M38,41h-7v-7h7V41z M22,34h7v7h-7
		V34z M22,25h7v7h-7V25z M13,25h7v7h-7V25z M13,34h7v7h-7V34z M20,50h-7v-7h7V50z M29,50h-7v-7h7V50z M38,50h-7v-7h7V50z M47,50h-7
		v-7h7V50z M47,41h-7v-7h7V41z M47,25v7h-7v-7H47z" />
                            </g>
                        </svg>일정</label>
                    <input id="tab4" type="radio" name="tabs" class="tabs">
                    <label for="tab4" class="tabslabel"><svg version="1.1" id="Capa_1"
                            xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
                            y="0px" viewBox="0 0 58 58" style="enable-background:new 0 0 58 58;" xml:space="preserve">
                            <g>
                                <rect x="9" y="12" width="40" height="2" />
                                <rect x="9" y="28" width="40" height="2" />
                                <rect x="9" y="44" width="40" height="2" />
                                <path d="M0,0v58h58V0H0z M56,56H2V2h54V56z" />
                            </g>
                        </svg>할일</label>
                    <div id="line"></div>
                    <div id="commonboard" class="writemenu">
                        <div class="textbody">
                            <div class="title">
                                <input type="text" class="title_detail" placeholder="제목 입력(선택)">
                            </div>
                            <textarea class="content_detail" placeholder="내용을 입력하세요"></textarea>
                        </div>
                        <div class="textfooter">
                            <div class="textfooter_func_wrap">
                                <a href=""><img src="${pageContext.request.contextPath}/resources/img/attachment.png" class="textfooter_func"></a>
                                <a href=""><img src="${pageContext.request.contextPath}/resources/img/picture-2.png" class="textfooter_func"></a>
                            </div>
                            <div class="textfooter_side">
                                <div class="public">
                                    <img src="${pageContext.request.contextPath}/resources/img/worldwide.png"><span>전체공개
                                        &#9660;</span>
                                </div>
                                <div class="public_admin" style="display: none;">
                                    <img src="${pageContext.request.contextPath}/resources/img/unlocked-1.png"><span>관리자만
                                        &#9660;</span>
                                </div>
                                <div class="public_setting" style="display: none;">
                                    <h1 class="public_setting_title">게시물 공개 대상</h1>
                                    <ul>
                                        <li class="set_li">
                                            <img src="${pageContext.request.contextPath}/resources/img/worldwide.png" class="setimg">
                                            <div class="p_set_con">
                                                <strong>전체공개</strong>
                                                <span>전체 사람들에게 공개됩니다.</span>
                                            </div>
                                        </li>
                                        <li class="set_li_admin">
                                            <img src="${pageContext.request.contextPath}/resources/img/unlocked-1.png" class="setimg">
                                            <div class="p_set_con">
                                                <strong>관리자만</strong>
                                                <span>프로젝트 관리자에게만 공개됩니다.</span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <button class="writebtn">올리기</button>
                            </div>
                        </div>
                    </div>
                    
                    <!-- 혜원 )  업무 글작성 부분 -->
                    <div id="task" class="writemenu">
                    <form name="task_frm" id="task_frm">
                    	 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                        <div class="textbody">
                            <div class="title">
                                <input type="text" class="title_detail" name="tasktitle" id="tasktitle" placeholder="업무명을 입력하세요.(50자 이내)">
                            </div>
                            <div id="task-01">
                            	<img src="${pageContext.request.contextPath}/resources/img/svg/clock-history.svg" width="20px" height="20px" id="task-icon01">
	                            	<div class="task-radio-wrap">
	                            	<input type="radio" class="task-radio" name="task-radio" id="task-radio-01" value="t01"> 
	                            	<label for="task-radio-01" class="t-label">요청</label>
	                            	<input type="radio" class="task-radio" name="task-radio" id="task-radio-02" value="t02">
									<label for="task-radio-02" class="t-label">진행</label>
	                            	<input type="radio" class="task-radio" name="task-radio" id="task-radio-03" value="t03"> 
	                            	<label for="task-radio-03" class="t-label">완료</label>
	                            	<input type="radio" class="task-radio" name="task-radio" id="task-radio-04" value="t04"> 
	                            	<label for="task-radio-04" class="t-label">보류</label>
	                            	</div>
                            </div>
                            <div id="task-02">
                        	    <img src="${pageContext.request.contextPath}/resources/img/svg/person-plus-fill.svg" width="20px" height="20px" class="task-icon02">
                          		<div class="task-res-wrap">
                          			<input type="text" class="task-res" name="taskname" placeholder="담당자 추가">
                          			<input type="hidden" class="task-res-uno-c" name="taskuno">
                          			 <!-- 업무담당자 모달 /  해당 project 유저 list 뿌리기-->
                          			<div class="task-res-add-wrap">
                          				<div class="task-add">
	                          				<ul>
	                          					<li class="task-res-list">김혜원 <input type="hidden" class="taks-res-uno" value="10"></li>
	                          					<li class="task-res-list">이혜림 <input type="hidden" class="taks-res-uno" value="20"></li>
	                          					<li class="task-res-list">오은실 <input type="hidden" class="taks-res-uno" value="30"></li>
	                          					<li class="task-res-list">이윤진 <input type="hidden" class="taks-res-uno" value="40"></li>
	                          					<li class="task-res-list">김봉영 <input type="hidden" class="taks-res-uno" value="50"></li>
	                          				</ul>
                          				</div>
                          				
                          			</div>
                          		</div>
                          	</div>
                            <div class="task-03">
                        	    <img src="${pageContext.request.contextPath}/resources/img/svg/calendar-5.svg" width="20px" height="20px" class="task-icon02">
                          		<div class="task-start-wrap">
                          			<input type="text" name="taskstartdate" id="task-start-date" class="task-schedule"  placeholder="시작일시 추가">
                          		</div>
                          	</div>
                            <div class="task-03">
                        	    <img src="${pageContext.request.contextPath}/resources/img/svg/calendar-5.svg" width="20px" height="20px" class="task-icon02">
                          		<div class="task-start-wrap">
                          			<input type="text" name="taskenddate" id="task-end-date" class="task-schedule" placeholder="마감일시 추가">
                          		</div>
                          	</div>
                            <div class="task-04">
                        	    <img src="${pageContext.request.contextPath}/resources/img/svg/bar-chart-line-fill.svg" width="20px" height="20px" class="task-icon02">
									<div class="task-rate-wrap">
									 <a class="workPrgs">
									<div class="workPrgrs_bg">
										<strong id="PROGRESS_PER" class="txt">0%</strong>
										<input type="hidden" name="trate" id="trate">
										<span id="PROGRESS" class="bar percent0"></span>
										<div class="pcnt0" data="0" style="width:5%;display:block">
											<span class="pcnt">
												<button>0%</button>
											</span>
										</div>
										<div class="pcnt20" data="20" style="left:5%;">
											<span class="pcnt">
												<button>20%</button>
											</span>
										</div>
										<div class="pcnt40" data="40">
											<span class="pcnt">
												<button>40%</button>
											</span>
										</div>
										<div class="pcnt60" data="60">
											<span class="pcnt">
												<button>60%</button>
											</span>
										</div>
										<div class="pcnt80" data="80">
											<span class="pcnt">
												<button>80%</button>
											</span>
										</div>
										<div class="pcnt100" data="100">
											<span class="pcnt">
												<button>100%</button>
											</span>
										</div>
									</div>
		                          </a>
                          		</div>
                        	</div>
                          		
                            <div class="task-05">
                        	    <img src="${pageContext.request.contextPath}/resources/img/svg/flag-2.svg" width="20px" height="20px" class="task-icon02">
                          		<div class="task-pri-wrap">
                          			<input type="text" class="task-pri" name="taskpri" placeholder="우선순위 추가">
                          			<div class="task-pri-add-wrap">
                          				<div class="task-pri-add">
	                          				<button type="button" class="task-pri" id="lv1" value="lv1">낮음</button> <br>
	                          				<button type="button" class="task-pri" id="lv2" value="lv2">보통</button> <br>
	                          				<button type="button" class="task-pri" id="lv3" value="lv3">높음</button>
	                          				
                          				</div>
                          				
                          			</div>
                          		</div>
                          	</div>
                          	
                            	
                            <textarea class="content_detail2" placeholder="업무내용을 입력하세요" id="task-content" name="task-content"></textarea>
                        </div>
                        <div class="textfooter">
                            <div class="textfooter_func_wrap">
                                <a href=""><img src="${pageContext.request.contextPath}/resources/img/attachment.png" class="textfooter_func"></a>
                                <a href=""><img src="${pageContext.request.contextPath}/resources/img/picture-2.png" class="textfooter_func"></a>
                            </div>
                            <div class="textfooter_side">
                                <div class="public">
                                    <img src="${pageContext.request.contextPath}/resources/img/worldwide.png"><span>전체공개
                                        &#9660;</span>
                                </div>
                                <div class="public_admin" style="display: none;">
                                    <img src="${pageContext.request.contextPath}/resources/img/unlocked-1.png"><span>관리자만
                                        &#9660;</span>
                                </div>
                                <div class="public_setting" style="display: none;">
                                    <h1 class="public_setting_title">게시물 공개 대상</h1>
                                         	<input type="hidden" id="taskopen" name="taskopen" value="0"/>
                                    <ul>
                                        <li class="set_li">
                                            <img src="${pageContext.request.contextPath}/resources/img/worldwide.png" class="setimg">
                                            <div class="p_set_con">
                                                <strong>전체공개</strong>
                                                <span>전체 사람들에게 공개됩니다.</span>
                                            </div>
                                        </li>
                                        <li class="set_li_admin">
                                            <img src="${pageContext.request.contextPath}/resources/img/unlocked-1.png" class="setimg">
                                            <div class="p_set_con">
                                                <strong>관리자만</strong>
                                                <span>프로젝트 관리자에게만 공개됩니다.</span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <button type="button" class="writebtn" onclick="taskSubmit()">올리기</button>
                            </div>
                        </div>
                    </form>
                    </div>
    <script>
    $(function() {
	    //input을 datepicker로 선언
	    $.datepicker.setDefaults({
	        dateFormat: 'yy-mm-dd' //Input Display Format 변경
	        ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
	        ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
	        ,changeYear: true //콤보박스에서 년 선택 가능
	        ,changeMonth: true //콤보박스에서 월 선택 가능                
	        // ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
	        // ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
	        // ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
	        // ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
	        ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
	        ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
	        ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
	        ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
	        ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
	        ,minDate: "-48M" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
	        ,maxDate: "+12M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                
	    });                    
	    $('#task-start-date').datepicker(); 
	    $('#task-end-date').datepicker(); 
	    
	    $(".task-res").click(function (){
	    	$(".task-res-add-wrap").toggle();
	    });
	    
	    $(".task-pri").click(function (){
	    	$(".task-pri-add-wrap").toggle();
	    });
	    $(".pcnt0").click(function(){
	    	$(".bar").css("background-color","#7099de");
	    	$(".bar").css("width","8px");
	    	$("#PROGRESS_PER").html("0%");
	    	$("#trate").val("0");
	    	console.log("val값:"+$("#PROGRESS_PER").val());
	    });
	    $(".pcnt20").click(function(){
	    	$(".bar").css("background-color","#7099de");
	    	$(".bar").css("width","30px");
	    	$("#PROGRESS_PER").html("20%");
	    	$("#trate").val("20");
	    	console.log("val값:"+$("#PROGRESS_PER").val());
	    });
	    $(".pcnt40").click(function(){
	    	$(".bar").css("background-color","#7099de");
	    	$(".bar").css("width","60px");
	    	$("#PROGRESS_PER").html("40%");
	    	$("#trate").val("40");
	    	console.log("val값:"+$("#PROGRESS_PER").val());
	    });
	    $(".pcnt60").click(function(){
	    	$(".bar").css("background-color","#7099de");
	    	$(".bar").css("width","90px");
	    	$("#PROGRESS_PER").html("60%");
	    	$("#trate").val("60");
	    	console.log("val값:"+$("#PROGRESS_PER").val());
	    });
	    $(".pcnt80").click(function(){
	    	$(".bar").css("background-color","#7099de");
	    	$(".bar").css("width","120px");
	    	$("#PROGRESS_PER").html("80%");
	    	$("#trate").val("80");
	    	console.log("val값:"+$("#PROGRESS_PER").val());
	    });
	    $(".pcnt100").click(function(){
	    	$(".bar").css("width","150px");
	    	$(".bar").css("background-color","#6db47c");
	    	$("#PROGRESS_PER").html("100%");
	    	$("#trate").val("100");
	    	console.log("val값:"+$("#PROGRESS_PER").val());
	    });
	    $("#lv1").click(function(){
	    	$(".task-pri").val("낮음");
	    	$(".task-pri-add-wrap").hide();
	    });
	    $("#lv2").click(function(){
	    	$(".task-pri").val("보통");
	    	$(".task-pri-add-wrap").hide();
	    });
	    $("#lv3").click(function(){
	    	$(".task-pri").val("높음");
	    	$(".task-pri-add-wrap").hide();
	    });
	    $(".task-res-list").click(function(){
	    	$(".task-res").val($(this).text());
	    	$(".task-res-add-wrap").hide();
	    });
	    
	    
	});
	    function taskSubmit() {
	    	//제목
	    	var tasktitle = $("#tasktitle").val();
	    	//업무상태
	    	var taskstate = $('input[name="task-radio"]:checked').val();
	    	//시작일시
	    	var tstart = $("#task-start-date").val();
	    	//마감일시
	    	var tend = $("#task-end-date").val();
	    	//달성률
	    	var trate = $("#PROGRESS_PER").val();
	    	//우선순위
	    	var tpri = $(".task-pri").val();
	    	//글내용
	    	var tcontent = $("#task-content").val();
	    	//담당자
	    	var tres = $(".task-res").val();
	    	//공개여부
	    	var open
	    	
	    	var frm=document.task_frm;
			frm.action="${pageContext.request.contextPath}/project/taskinsert";
			frm.method = "post";
			frm.submit();
	    	//console.log(tasktitle+"타이틀"+taskstate+"state"+"시작"+tstart+"마감"+tend+"달성률"+trate+"우선순위:"+tpri+"글내용+"+tcontent+"담당자"+tres);
	    }
</script>
    
    
                    <div id="schedule" class="writemenu">
                        <div class="textbody">
                            <div class="title">
                                <input type="text" class="title_detail" placeholder="제목 입력(선택)">
                            </div>
                            <textarea class="content_detail2" placeholder="내용을 입력하세요"></textarea>
                        </div>
                        <div class="textfooter">
                            <div class="textfooter_func_wrap">
                                <a href=""><img src="${pageContext.request.contextPath}/resources/img/attachment.png" class="textfooter_func"></a>
                                <a href=""><img src="${pageContext.request.contextPath}/resources/img/picture-2.png" class="textfooter_func"></a>
                            </div>
                            <div class="textfooter_side">
                                <div class="public">
                                    <img src="${pageContext.request.contextPath}/resources/img/worldwide.png"><span>전체공개
                                        &#9660;</span>
                                </div>
                                <div class="public_admin" style="display: none;">
                                    <img src="${pageContext.request.contextPath}/resources/img/unlocked-1.png"><span>관리자만
                                        &#9660;</span>
                                </div>
                                <div class="public_setting" style="display: none;">
                                    <h1 class="public_setting_title">게시물 공개 대상</h1>
                                    <ul>
                                        <li class="set_li">
                                            <img src="${pageContext.request.contextPath}/resources/img/worldwide.png" class="setimg">
                                            <div class="p_set_con">
                                                <strong>전체공개</strong>
                                                <span>전체 사람들에게 공개됩니다.</span>
                                            </div>
                                        </li>
                                        <li class="set_li_admin">
                                            <img src="${pageContext.request.contextPath}/resources/img/unlocked-1.png" class="setimg">
                                            <div class="p_set_con">
                                                <strong>관리자만</strong>
                                                <span>프로젝트 관리자에게만 공개됩니다.</span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <button class="writebtn">올리기</button>
                            </div>
                        </div>
                    </div>
                    <div id="todo" class="writemenu">
                        <div class="textbody">
                            <div class="title">
                                <input type="text" class="title_detail" placeholder="제목 입력(선택)">
                            </div>
                            <textarea class="content_detail2" placeholder="내용을 입력하세요"></textarea>
                        </div>
                        <div class="textfooter">
                            <div class="textfooter_func_wrap">
                                <a href=""><img src="${pageContext.request.contextPath}/resources/img/attachment.png" class="textfooter_func"></a>
                                <a href=""><img src="${pageContext.request.contextPath}/resources/img/picture-2.png" class="textfooter_func"></a>
                            </div>
                            <div class="textfooter_side">
                                <div class="public">
                                    <img src="${pageContext.request.contextPath}/resources/img/worldwide.png"><span>전체공개
                                        &#9660;</span>
                                </div>
                                <div class="public_admin" style="display: none;">
                                    <img src="${pageContext.request.contextPath}/resources/img/unlocked-1.png"><span>관리자만
                                        &#9660;</span>
                                </div>
                                <div class="public_setting" style="display: none;">
                                    <h1 class="public_setting_title">게시물 공개 대상</h1>
                                    <ul>
                                        <li class="set_li">
                                            <img src="${pageContext.request.contextPath}/resources/img/worldwide.png" class="setimg">
                                            <div class="p_set_con">
                                                <strong>전체공개</strong>
                                                <span>전체 사람들에게 공개됩니다.</span>
                                            </div>
                                        </li>
                                        <li class="set_li_admin">
                                            <img src="${pageContext.request.contextPath}/resources/img/unlocked-1.png" class="setimg">
                                            <div class="p_set_con">
                                                <strong>관리자만</strong>
                                                <span>프로젝트 관리자에게만 공개됩니다.</span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <button class="writebtn">올리기</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="one">
                <div class="boardHeader">
                    <div class="writeInfo">
                        <span><img src="${pageContext.request.contextPath}/resources/img/user-3.png" class="profileImg"></span>
                        <div class="writer">이혜림</div>
                        <div class="writeDate">202012-18-17:34</div>
                        <img src="">
                    </div>
                    <div class="option">
                        <div>
                            <a href=""><img src="${pageContext.request.contextPath}/resources/img/push-pin.png" class="fixNotice"></a>
                        </div>
                        <div>
                            <a href="" id="dropdown"><img src="${pageContext.request.contextPath}/resources/img/more-1.png" class="editoption"></a>
                        </div>
                        <div class="editDropdown">
                            <ul>
                                <li><a href="">글 삭제</a></li>
                                <li><a href="">다른 프로젝트에 올리기</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="boardResult">
                    일반 글 작성 내용입니다<br>
                    일반 글 작성 내용입니다<br>
                    일반 글 작성 내용입니다<br>
                    일반 글 작성 내용입니다<br>
                    일반 글 작성 내용입니다<br>
                    일반 글 작성 내용입니다<br>
                    <div class="replyCount">댓글 10개</div>
                </div>

                <div class="threeBtn">
                    <ul>
                        <li>
                            <a href=""><img src="${pageContext.request.contextPath}/resources/img/like.png" class="like"
                                    style="width: 19px; padding-right: 10px;  padding-bottom : 5px; vertical-align: middle;">좋아요</a>
                        </li>
                        <li>
                            <a href=""><img src="${pageContext.request.contextPath}/resources/img/chat-03.png" class="replyReg"
                                    style="width: 17px; padding-right: 10px;vertical-align: middle;">댓글작성</a>
                        </li>
                        <li>
                            <a href=""><img src="${pageContext.request.contextPath}/resources/img/bookmark.png" class="save"
                                    style="width: 13px; padding-right: 10px; vertical-align: middle;">담아두기</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="reply">
                <button class="replyMore">이전 댓글 더보기</button>
                <div class="defaultReply">
                    <span>
                        <img src="${pageContext.request.contextPath}/resources/img/user-3.png" class="replayPfImg">
                    </span>
                    <span class="replyTitle">이혜림</span>
                    <span class="replyDate">202012-18-17:34</span>
                    <span class="replyEdit">
                        <a href="">수정 &nbsp;&nbsp;&nbsp;| </a>
                        <a href=""> &nbsp;&nbsp;&nbsp; 삭제</a>
                    </span>
                    <div id="replyResult">댓글 작성 내용입니다 댓글 작성 내용입니다 댓글 작성 내용입니다</div>
                </div>

                <div class="defaultReply">
                    <span>
                        <img src="${pageContext.request.contextPath}/resources/img/user-3.png" class="replayPfImg">
                    </span>
                    <span class="replyTitle">이혜림</span>
                    <span class="replyDate">202012-18-17:34</span>
                    <span class="replyEdit">
                        <a href="">수정 &nbsp;&nbsp;&nbsp;| </a>
                        <a href=""> &nbsp;&nbsp;&nbsp; 삭제</a>
                    </span>
                    <div id="replyResult">댓글 작성 내용입니다 댓글 작성 내용입니다 댓글 작성 내용입니다</div>
                </div>
                <div class="replyFrom">
                    <span>
                        <img src="${pageContext.request.contextPath}/resources/img/user-2.png" class="replayPfImg2">
                    </span>
                    <input type="text" name="reply" id="replyarea" placeholder="댓글을 입력하세요.">
                    <button id="replyReg">등록</button>
                </div>
            </div>
        </div>
        <div class="rightBar">
            <a href="#">
                <div id="prevbtn">
                    <svg version="1.1" class="prevsvg rightsvg" xmlns="http://www.w3.org/2000/svg"
                        xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 60 60"
                        style="enable-background:new 0 0 60 60;" xml:space="preserve">
                        <path
                            d="M2.414,30l13.293-13.293c0.391-0.391,0.391-1.023,0-1.414s-1.023-0.391-1.414,0l-14,14c-0.391,0.391-0.391,1.023,0,1.414
                   l14,14C14.488,44.902,14.744,45,15,45s0.512-0.098,0.707-0.293c0.391-0.391,0.391-1.023,0-1.414L2.414,30z" />
                    </svg> 이전화면

                </div>
            </a>
            <div id="rightbtns">
                <a href="#">
                <div class="rightbtn btnhover">
                    <div>
                        <svg version="1.1" class="fileboxsvg rightsvg" xmlns="http://www.w3.org/2000/svg"
                            xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 60 60"
                            style="enable-background:new 0 0 60 60;" xml:space="preserve">
                            <g>
                                <path d="M60,8.311c0-0.199-0.052-0.382-0.131-0.551c-0.027-0.209-0.112-0.412-0.254-0.579L53.46,0H6.54L0.384,7.182
                           C0.242,7.348,0.157,7.55,0.131,7.76C0.052,7.929,0,8.112,0,8.311V19h3v41h54V19h3V8.311z M7.46,2h45.08l4.286,5H3.174L7.46,2z
                            M55,58H5V19h50V58z M58,17h-1H3H2V9h56V17z" />
                                <path d="M42,23H18v10h24V23z M40,31H20v-6h20V31z" />
                                <path d="M45,38H15v14h30V38z M43,50H17V40h26V50z" />
                                <path
                                    d="M22,48h5c0.552,0,1-0.447,1-1s-0.448-1-1-1h-5c-0.552,0-1,0.447-1,1S21.448,48,22,48z" />
                                <path
                                    d="M27,44h11c0.552,0,1-0.447,1-1s-0.448-1-1-1H27c-0.552,0-1,0.447-1,1S26.448,44,27,44z" />
                                <path d="M22,44c0.26,0,0.52-0.11,0.71-0.29C22.89,43.52,23,43.26,23,43c0-0.261-0.11-0.521-0.29-0.71c-0.38-0.37-1.04-0.37-1.42,0
                           C21.11,42.479,21,42.739,21,43c0,0.27,0.11,0.52,0.29,0.71C21.48,43.89,21.73,44,22,44z" />
                                <path
                                    d="M31.29,46.29C31.11,46.479,31,46.739,31,47c0,0.26,0.11,0.52,0.29,0.71C31.48,47.89,31.74,48,32,48
                           c0.26,0,0.52-0.11,0.71-0.29C32.89,47.52,33,47.26,33,47c0-0.261-0.11-0.521-0.29-0.71C32.34,45.92,31.66,45.92,31.29,46.29z" />
                                <path
                                    d="M38,46h-1c-0.552,0-1,0.447-1,1s0.448,1,1,1h1c0.552,0,1-0.447,1-1S38.552,46,38,46z" />
                            </g>
                        </svg>
                    </div>
                    <div>파일함</div>
                </div></a>
                <a href="#">
                <div class="rightbtn btnhover">
                    <div><svg version="1.1" class="checkedsvg rightsvg" xmlns="http://www.w3.org/2000/svg"
                            xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 59 59"
                            style="enable-background:new 0 0 59 59;" xml:space="preserve">
                            <g>
                                <path
                                    d="M52,21c-0.553,0-1,0.447-1,1v32H2V5h49v1c0,0.553,0.447,1,1,1s1-0.447,1-1V3H0v53h53V22C53,21.447,52.553,21,52,21z" />
                                <path d="M58.707,7.293c-0.391-0.391-1.023-0.391-1.414,0L27,37.586l-13.07-13.07c-0.391-0.391-1.023-0.391-1.414,0
                           s-0.391,1.023,0,1.414l13.777,13.777C26.488,39.902,26.744,40,27,40s0.512-0.098,0.707-0.293l31-31
                           C59.098,8.316,59.098,7.684,58.707,7.293z" />
                            </g>
                        </svg></div>
                    <div>업무</div>
                </div></a>
                <a href="#">
                <div class="rightbtn btnhover">
                    <div><svg version="1.1" class="schedulesvg rightsvg" xmlns="http://www.w3.org/2000/svg"
                            xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 60 60"
                            style="enable-background:new 0 0 60 60;" xml:space="preserve">
                            <g>
                                <path d="M57,4h-7V1c0-0.553-0.447-1-1-1h-7c-0.553,0-1,0.447-1,1v3H19V1c0-0.553-0.447-1-1-1h-7c-0.553,0-1,0.447-1,1v3H3
                            C2.447,4,2,4.447,2,5v11v43c0,0.553,0.447,1,1,1h54c0.553,0,1-0.447,1-1V16V5C58,4.447,57.553,4,57,4z M43,2h5v3v3h-5V5V2z M12,2h5
                            v3v3h-5V5V2z M4,6h6v3c0,0.553,0.447,1,1,1h7c0.553,0,1-0.447,1-1V6h22v3c0,0.553,0.447,1,1,1h7c0.553,0,1-0.447,1-1V6h6v9H4V6z
                            M4,58V17h52v41H4z" />
                                <path d="M38,23h-7h-2h-7h-2h-9v9v2v7v2v9h9h2h7h2h7h2h9v-9v-2v-7v-2v-9h-9H38z M31,25h7v7h-7V25z M38,41h-7v-7h7V41z M22,34h7v7h-7
                            V34z M22,25h7v7h-7V25z M13,25h7v7h-7V25z M13,34h7v7h-7V34z M20,50h-7v-7h7V50z M29,50h-7v-7h7V50z M38,50h-7v-7h7V50z M47,50h-7
                            v-7h7V50z M47,41h-7v-7h7V41z M47,25v7h-7v-7H47z" />
                            </g>
                        </svg></div>
                    <div>일정</div>
                </div></a>
                <a href="#">
                <div class="rightbtn btnhover">
                    <div><svg version="1.1" class="todosvg rightsvg" xmlns="http://www.w3.org/2000/svg"
                            xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 58 58"
                            style="enable-background:new 0 0 58 58;" xml:space="preserve">
                            <g>
                                <rect x="9" y="12" width="40" height="2" />
                                <rect x="9" y="28" width="40" height="2" />
                                <rect x="9" y="44" width="40" height="2" />
                                <path d="M0,0v58h58V0H0z M56,56H2V2h54V56z" />
                            </g>
                        </svg></div>
                    <div>할일</div>
                </div>
            </div></a>
            <div id="pjchat">
                <div id="pjmembox">
                    <div class="allpj_title">
                        전체참여자
                        <span>5명</span>
                        <a href="#" class="allpjmem">전체보기</a>
                    </div>
                    <div class="part-title">관리자&nbsp;(1)</div>
                    <div id="pjmemlist">
                        <ul>
                            <li class="btnhover">
                                <img src="${pageContext.request.contextPath}/resources/img/user-3.png" class="userimg" width="32px">
                                <span class="pjusername">김혜원</span>
                                <a href="#"><img src="${pageContext.request.contextPath}/resources/img/chat-04.png" class="chatsvg"></a>
                            </li>
                        </ul>
                        <div class="part-title">내부참여자&nbsp;(4)</div>
                        <ul>
                            <li class="btnhover">
                                <img src="${pageContext.request.contextPath}/resources/img/user-3.png" class="userimg" width="32px">
                                <span class="pjusername">이윤진</span>
                                <a href="#"><img src="${pageContext.request.contextPath}/resources/img/chat-04.png" class="chatsvg"></a>
                            </li>
                        </ul>
                        <ul>
                            <li class="btnhover">
                                <img src="${pageContext.request.contextPath}/resources/img/user-3.png" class="userimg" width="32px">
                                <span class="pjusername">이혜림</span>
                                <a href="#"><img src="${pageContext.request.contextPath}/resources/img/chat-04.png" class="chatsvg"></a>
                            </li>
                            <li class="btnhover">
                                <img src="${pageContext.request.contextPath}/resources/img/user-3.png" class="userimg" width="32px">
                                <span class="pjusername">오은실</span>
                                <a href="#"><img src="${pageContext.request.contextPath}/resources/img/chat-04.png" class="chatsvg"></a>
                            </li>
                            <li class="btnhover">
                                <img src="${pageContext.request.contextPath}/resources/img/user-3.png" class="userimg" width="32px">
                                <span class="pjusername">김봉영</span>
                                <a href="#"><img src="${pageContext.request.contextPath}/resources/img/chat-04.png" class="chatsvg"></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <a href="">
                    <div id="pjchatbox">
                        채팅 &nbsp;<img src="${pageContext.request.contextPath}/resources/img/chat-04-fill.png" id="chatbtn-fill">
                    </div>
                </a>
            </div>
        </div>
    </div>
    </div>
    </div>
    <script>

        //게시글 작성 공개여부 설정
        $(".textfooter_side").on("click", function (e) {
            e.preventDefault();
            $(".public_setting").toggle();

            // if($('#pub_dropdown').data('clicked',true)){
            //     $("#pub").show();
            //     $("#admin").hide();
            // } else if($('#admin_dropdown').data('clicked',true)){
            //     $("#pub").show();
            //     $("#admin").hide();
            // }
            $('.set_li').on('click', function () {
                $(".public").show();
                $(".public_admin").hide();
                $("#taskopen").val("0");
            });
            $('.set_li_admin').on('click', function () {
                $(".public").hide();
                $(".public_admin").show();
                $("#taskopen").val("1");
            });
        })
        //게시글 작성 상자 늘어나기
        $('.wrap').on('keyup', 'textarea', function (e) {
            $(this).css('height', 'auto');
            $(this).height(this.scrollHeight);
        });
        $('.wrap').find('textarea').keyup();



        //작성된 글 더보기 메뉴 (혜림)
        $(".option #dropdown").on("click", function (e) {
            e.preventDefault();
            $(".editDropdown").toggle();
        });

        //스크롤 숨겼다가 hover하면 나타남
        $("#pjmemlist").mouseover(function () {
            $(this).css("overflow-y", "scroll");
        });
        $("#pjmemlist").mouseout(function () {
            $(this).css("overflow-y", "hidden");
        });

        //우측 버튼 hover시 background-color 변경
        $(".btnhover").hover(function () {
            $(this).css('background-color', '#e7e7e7');
        }, function () {
            $(this).css('background-color', '#ffffff');
        });
        //우측 이전화면 버튼 hover
        $("#prevbtn").hover(function () {
            $(this).css('border', '1px solid #23d9d9');
            $(this).css('color', '#23d9d9');
            $(".prevsvg").css('fill', '#23d9d9');
        }, function () {
            $(this).css('border', 'none');
            $(this).css('color', '#333333');
            $(".prevsvg").css('fill', '#111111');
        });
    </script>
</body>

</html>