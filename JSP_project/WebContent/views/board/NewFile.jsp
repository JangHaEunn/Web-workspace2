<%@page import="com.kh.board.model.vo.Category, java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<Category> list = (ArrayList<Category>)request.getAttribute("list");
%>     
  
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>The Growing</title>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">


  


    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    />

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
          href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
          rel="stylesheet"
        />


        <script src="views/resources/summernote-lite.js"></script>
        <script src="views/resources/summernote-ko-KR.js"></script>
        
        <link rel="stylesheet" href="views/resources/summernote-lite.css">

    <style>

/* 버튼 css */
.box {
      display: flex;
      background: #ffffff;
      color: #000000;
      width: 150px;
      height: 50px;
      border-radius: 30px;
    }
    .button_UI {
      float: left;
      width: 150px;
      height: 50px;
      display: block;
      border: none;
      background: none; 
      color: inherit;
      position: relative;
      z-index: 1;
      -webkit-backface-visibility: hidden;
      -moz-osx-font-smoothing: grayscale;
      border-radius: 30px;
      border: 3px solid;
    }
    .button_UI :active{
     color :rgb(137, 180, 166);
    }
    .button_UI:focus {
      outline: none;
    }
    
    .button--winona {
      overflow: hidden;
      padding: 0;
      -webkit-transition: border-color 0.3s, background-color 0.3s;
      transition: border-color 0.3s, background-color 0.3s;
      -webkit-transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);
      transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);
    }
    .button--winona::after {
      content: attr(data-text);
      position: absolute;
      width: 100%;
      height: 100%;
      top: 0;
      left: 0;
      opacity: 0;
      color: rgb(137, 180, 166);
      font-weight: 600;
      -webkit-transform: translate3d(0, 25%, 0);
      transform: translate3d(0, 25%, 0);
    }
    .button--winona::after,
    .button--winona > span {
      padding: 10px;
      -webkit-transition: -webkit-transform 0.3s, opacity 0.3s;
      transition: transform 0.3s, opacity 0.3s;
      -webkit-transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);
      transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);
      display: block;
      font-weight: 600;
    }
    .button--winona:hover {
      border-color: rgb(137, 180, 166);
      background-color: rgba(255, 255, 255, 0.1);
    }
    
    .button--winona:hover::after {
      opacity: 1;
      -webkit-transform: translate3d(0, 0, 0);
      transform: translate3d(0, 0, 0);
    }
    .button--winona:hover > span {
      opacity: 0;
      -webkit-transform: translate3d(0, -25%, 0);
      transform: translate3d(0, -25%, 0);
    }






      *{
        
font-family: 'Gowun Dodum', sans-serif;
      }
      #board_wrap {
        width: 100%;
        min-height: 700px;
      }
      #inner_wrap {
        width: 1200px;
        height: 700px;
        margin: auto;
      }
      div {
        box-sizing: border-box;
       /*  border: 1px solid red; */
      }
      #inner_wrap > div {
        height: 100%;
        float: left;
      }
      #board {
        width: 20%;
      }
      #board_area {
        width: 80%;
      }
      #board >ul> li {
        list-style-type: none;
      }
      #board >ul {
        padding: 0;
      }
      .board_li {
        height: 28px;
        cursor: pointer;
      }
      .board_title{
        font-size: large; 
        font-weight: 700; 
        padding-bottom: 10px;
        padding-left: 14px;
      }
      .board_li:hover{
        font-weight: 700;
      } 
      .board_li>div{
        border-radius: 30px;
        width: 100%;
        height: 40px;
        padding: 9px;
        padding-left: 14px;
      }
      .board_li{
        margin-bottom: 13px;
      }
      .board_hr{
        padding: 7px;
      }
      #album_title {
        width: 83%;
        font-size: 25px;
        font-weight: 700;
        padding-top: 13px;
        padding-left: 14px;
      }
      #board_area{
        padding : 20px;
      }

      #album_area {
        width: 100%;
        height: 70%;
        background-color: aliceblue;
      }
      #album_area > div {
        float: left;
        height: 100%;
      }
      #album_header {
        height: 80px;
        width: 100%;
        position: sticky;
        /* background-color: antiquewhite; */
      }
    </style>
  </head>
  <body>
    <div id="board_wrap">
      <div id="inner_wrap">
        <div id="board">
            <ul>
              <li class="board_title">게시판</li>
              <li class="board_li" id="board_recent"><div>최근 게시글</div></li>
              <li class="board_li" id="board_notice"><div>알림장</div></li>
              <li class="board_li" id="board_album"><div>앨범</div></li>
              <li class="board_li" id="board_free"><div>자유게시판</div></li>
              <li class="board_li" id="board_counsel"><div>상담게시판</div></li>
              <li class="board_hr"><hr></li>
              <li class="board_title">수업관리</li>
              <li class="board_li" id="board_survey"><div>설문조사</div></li>
              <li class="board_li" id="board_check"><div>출석체크</div></li>
              <li class="board_hr"><hr></li>
              <li class="board_title">클래스 관리</li>
              <li class="board_li" id="board_option"><div>클래스 설정</div></li>
              <li class="board_li"  id="board_manage"><div>구성원 관리</div></li>
              <li class="board_li" id="board_invite"><div>초대하기</div></li>
            </ul>
        </div>
        <div id="board_area">
        <form action="<%= request.getContextPath() %>/insert.bo" id="enroll-form" method="post" enctype="multipart/form-data">
            <div id="album_header">
                <div id="album_area">
                  <div id="album_title">앨범</div>
                  <div id="album_button"  class="box">
                      <button class="button_UI button--winona" data-text="글 등록" align="right" type="submit"><span>글 등록</span></button>
                  </div>
                </div>
                <div id="album_hr">
                  <hr />
                </div>
              </div>
            	<div id="title">제목<input type="text" size="50px;" name="title"></div>
                <textarea id="summernote" name="content"></textarea>
            </form>
        </div>
      </div>
      
      <script>
        $(function(){
            $(".board_li").click(function(){
                $(this).css("fontWeight","700").fadeIn(1000);
                $(this).children().css("background","rgb(239, 243, 239)");
                $(this).siblings(".board_li").css({fontWeight:"", color:"black"})
                $(this).siblings().children().css("background","");
            
            });

            $(document).ready(function() {
	//여기 아래 부분
	$('#summernote').summernote({
		  height: 300,                
		  minHeight: 500,            
		  maxHeight: null,            
		  focus: true,                 
		  lang: "ko-KR",					
		  placeholder: '최대 2048자까지 쓸 수 있습니다'	
          
	});



});
            

        });
     

      </script>
      <script type="text/javascript">
	jQuery(document).ready(function() {
	
		$('#summernote').summernote({
			lang : 'ko-KR',              // default: 'en-US'
			height: 300,                 // set editor height
			minHeight: null,             // set minimum height of editor
			maxHeight: null,             // set maximum height of editor
			focus: true,                 // set focus to editable area after initializing summernote
			toolbar: [
				['fontname', ['fontname']],
				['fontsize', ['fontsize']],
				['style', ['bold', 'italic', 'underline', 'clear']],
				['color', ['color']],
				['para', ['paragraph']],
				['insert', ['picture', 'link', 'video']],
				['view', ['codeview']]
			],
			fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', 'Helvetica neue', 'Helvetica', 'Impact', 'Lucida Grande', 'Tahoma', 'Times New Roman', 'Verdana', 'Tahoma', 'Courier New', '맑은 고딕', '굴림', '돋움'],
			fontNamesIgnoreCheck: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', 'Helvetica neue', 'Helvetica', 'Impact', 'Lucida Grande', 'Tahoma', 'Times New Roman', 'Verdana', 'Tahoma', 'Courier New',  '맑은 고딕', '굴림', '돋움'],
		});
    
	});
</script>
  </body>
</html>
