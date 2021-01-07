<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ontact, 서로 연결되는 온라인 공간</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
        rel="stylesheet">
    <link href="/css/reset.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <style>
        *{
            margin:0;
        }
        html,body {
            width: 100%;
            height: 100%;
            position: relative;
            font-size: 14px;
            font-family: Noto Sans KR;
            line-height: 1.15;
        }
        button{
            font-family: Noto Sans KR;
            cursor:pointer;
        }
        input{
            font-family: Noto Sans KR;
        }
        a{
            cursor:pointer;
        }

        header {
            position: relative;
            width: 100%;
            height: 60px;
        }

        header div {
            width: 1200px;
            height: 60px;
            margin: 0 auto;
        }

        section {
            position: relative;
            width: 1200px;
            height: 100%;
            margin: 0 auto;
        }

        /*사이드메뉴*/
        aside {
            width: 210px;
            height: 100%;
            float: left;
            background-color: #f2f2f2;
        }

        #aside_back {
            margin-top: 30px;
            width: 150px;
            height: 56px;
            font-size: 18px;
            line-height: 54px;
            border: 1px solid #5A3673;
            background-color: #5A3673;
            border-radius: 3px;
            font-weight: 700;
            color: white;
            margin-bottom: 20px;
        }

        aside ul {
            display: block;
        }

        aside ul li {
            padding: 20px;
            cursor: pointer;
        }

        aside ul li a {
            font-weight: 700;
            color: black;
            text-decoration: none;
            cursor: pointer;
            font-size: 17px;
        }

        /* 본문 */
        article {
            position: absolute;
            width: 970px;
            height: 860px;
            left: 210px;
            padding: 40px 0 40px 40px;
            border-left: 1px solid #e7e7e7;
            box-sizing: border-box;
        }
        #info_text{
            font-size:18px;
            border-bottom:2px solid #5A3673;
            padding : 0 0 12px 0;
            margin-bottom: 15px;
        }
        #info_wrapper{
            position: relative;
            display: flex;
            margin:20px 0px 0px 60px;
        }
        #info_side{
            
        }
        #info_side_text{
            font-size:16px;
            color:#111;
            padding-left:2px;
            font-weight:400;
            margin-left:20px;
        }
        #line{
            margin:20px 0;
            height:1px;
            line-height:0;
            overflow:hidden;
            background-color: #e9eaed;
            width:400px;
        }
        /* 사진부분 */
        #info_photo_wrap{
            width:250px;
        }
        /* 내정보 부분 */
        #info_section ul li{
            padding-bottom:5px
        }
        .userinfo_editable,
        .userinfo_uneditable,
        .companyinfo_editable{
            display:flex;
            position:relative;
            min-width: 350px;
            min-height:31px;
            line-height: 31px;
            padding:3px;
        }
        .userinfo_editable:hover,
        .companyinfo_editable:hover{
            background-color:#e7e7e7;
        }
        .userinfo_editable_content{
            width:170px;
        }
        .editbtn{
            display:none;
        }
        .userinfo_editable:hover .editbtn,
        .companyinfo_editable:hover .editbtn{
            position: absolute;
            display:block;
            right:0;
            font-size:12px;
            color:#a3a3a3;
            margin-left:30px;
            margin-right:5px;
        }
        /*내 정보 편집*/
        .userinfo_edit{
            display:flex;
            position:relative;
            min-width: 350px;
            min-height:31px;
            line-height: 31px;
            padding:3px;
        }
        .input_edit{
            border-top:none;
            border-left:none;
            border-right:none;
            border-bottom:1px solid #dddee2;
            font-weight:700;
            vertical-align:middle;
        }
        .info_btn_save{
            padding:0 7px 1px 7px;
            margin-left:12px;
            height:24px;
            line-height:24px;
            font-size:13px;
            font-weight:700;
            color:#505050;
            text-align:center;
            border:1px solid #b0b1b3;
            border-radius:2px;
            background-color:#fff;
        }
        .canclebtn{
            margin-left:10px;
            font-size:13px;;
            font-weight:700;
            color:#7b7c7f;
            line-height: 26px;
        }
    </style>
</head>

<body>
    <header>
        <div>헤더 들어갈 자리</div>
    </header>
    <section>
        <aside>
            <button id="aside_back"><&nbsp;&nbsp;&nbsp;&nbsp;돌아가기</button>
            <ul>
                <li><a href="#">계정 정보</a></li>
                <li><a href="#">비밀번호 설정</a></li>
            </ul>
        </aside>
        <article>
            <div id="info_text">계정 정보</div>
            <h5 id="info_side_text">내 프로필</h5>
            <div id="info_wrapper">
                <div id="info_side">
                    <div id="info_photo_wrap">
                        <div id="userphoto">사진</div>
                        <!--radious:90px-->
                        <a id="userphoto_btn">사진버튼</a>
                        <div id="userphoto_menu">
                            <a id="changephoto">사진 편집</a>
                            <a id="removephoto">사진 삭제</a>
                        </div>
                    </div>
                </div>
                <div id="info_section">
                    <ul class="usersinfo">
                        <li class="userinfo_line">
                            <!--마우스오버-->
                            <div class="userinfo_uneditable">
                                <span class="userinfo_editable_content">아이디</span>
                                <strong class="userinfo_content">ontact</strong>
                            </div>
                        </li>
                        <li class="userinfo_line">
                            <!--마우스오버-->
                            <div class="userinfo_editable">
                                <span class="userinfo_editable_content">이름</span>
                                <strong class="userinfo_content">온택트</strong>
                                <a class="editbtn">수정</a>
                            </div>
                            <!--편집활성-->
                            <div class="userinfo_edit" style="display: none">
                                <span class="userinfo_editable_content">이름</span>
                                <input type="text" class="input_edit" placeholder="이름 입력 2~6자"  max="6" min="2" name="uname">
                                <button class="info_btn_save">저장</button>
                                <a class="canclebtn">취소</a>
                            </div>
                        </li>
                        <li class="userinfo_line">
                            <!--마우스오버-->
                            <div class="userinfo_uneditable">
                                <span class="userinfo_editable_content">이메일</span>
                                <strong class="userinfo_content">ontact.com</strong>
                            </div>
                        </li>
                        <li class="userinfo_line">
                            <!--마우스오버-->
                            <div class="userinfo_editable">
                                <span class="userinfo_editable_content">휴대폰번호</span>
                                <strong class="userinfo_content">010-1111-1111</strong>
                                <a class="editbtn">수정</a>
                            </div>
                            <!--편집활성-->
                            <div class="userinfo_edit" style="display: none">
                                <span class="userinfo_editable_content">휴대폰번호</span>
                                <input type="tel" class="input_edit" placeholder="숫자만 입력해주세요"  max="11" name="utell">
                                <button class="info_btn_save">저장</button>
                                <a class="canclebtn">취소</a>
                            </div>
                        </li>
                    </ul>
                    <div id="line"></div>
                    <ul class="companyinfo">
                        <li class="companyinfo_line">
                            <!--마우스오버, 권한설정-->
                            <div class="companyinfo_editable">
                                <span class="userinfo_editable_content">회사명</span>
                                <strong class="userinfo_content">온택트</strong>
                                <a class="editbtn">수정</a>
                            </div>
                            <!--편집활성-->
                            <div class="userinfo_edit" style="display: none">
                                <span class="userinfo_editable_content">회사명</span>
                                <input type="text" class="input_edit" placeholder="최대 30자"  max="30" name="cname">
                                <button class="info_btn_save">저장</button>
                                <a class="canclebtn">취소</a>
                            </div>
                        </li>
                        <li class="companyinfo_line">
                            <!--마우스오버-->
                            <div class="companyinfo_editable">
                                <span class="userinfo_editable_content">부서명</span>
                                <strong class="userinfo_content">개발</strong>
                                <a class="editbtn">수정</a>
                            </div>
                            <!--편집활성-->
                            <div class="userinfo_edit" style="display: none">
                                <span class="userinfo_editable_content">부서명</span>
                                <input type="text" class="input_edit" placeholder="최대 15자"  max="15" name="dname">
                                <button class="info_btn_save">저장</button>
                                <a class="canclebtn">취소</a>
                            </div>
                        </li>
                        <li class="companyinfo_line">
                            <!--마우스오버-->
                            <div class="companyinfo_editable">
                                <span class="userinfo_editable_content">직책</span>
                                <strong class="userinfo_content">대표</strong>
                                <a class="editbtn">수정</a>
                            </div>
                             <!--편집활성-->
                             <div class="userinfo_edit" style="display: none">
                                <span class="userinfo_editable_content">직책</span>
                                <input type="text" class="input_edit" placeholder="직책 입력 2~6자"  max="6" min="2" name="urank">
                                <button class="info_btn_save">저장</button>
                                <a class="canclebtn">취소</a>
                            </div>
                        </li>
                        <li class="companyinfo_line">
                            <!--마우스오버-->
                            <div class="companyinfo_editable">
                                <span class="userinfo_editable_content">회사연락처</span>
                                <strong class="userinfo_content">010-111-111</strong>
                                <a class="editbtn">수정</a>
                            </div>
                            <!--편집활성-->
                            <div class="userinfo_edit" style="display: none">
                                <span class="userinfo_editable_content">회사연락처</span>
                                <input type="tel" class="input_edit" placeholder="숫자만 입력해주세요" name="dtell" max="11">
                                <button class="info_btn_save">저장</button>
                                <a class="canclebtn">취소</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </article>
    </section>

    <script>
        //편집 버튼 활성화
        $('.editbtn').click(function(){
            $(this).parent('.userinfo_editable').css("display","none");
            $(this).parents('li').find('.userinfo_edit').css("display","flex");
        });
        $('.editbtn').click(function(){
            $(this).parent('.companyinfo_editable').css("display","none");
            $(this).parents('li').find('.userinfo_edit').css("display","flex");
        });
        $('.canclebtn').click(function(){
            let $t = $(this).parents('li');
            //let content = $t.find('.userinfo_content').text();
            $(this).parent('.userinfo_edit').css("display","none");
            //$(this).parent('.userinfo_edit').find('.input_edit').val(content);
            $t.find('.userinfo_editable').css("display","flex");
        });
        $('.canclebtn').click(function(){
            let $t = $(this).parents('li');
            //let content = $t.find('.userinfo_content').text();
            $(this).parent('.userinfo_edit').css("display","none");
            //$(this).parent('.userinfo_edit').find('.input_edit').val(content);
            $t.find('.companyinfo_editable').css("display","flex");
        });
    </script>
</body>

</html>