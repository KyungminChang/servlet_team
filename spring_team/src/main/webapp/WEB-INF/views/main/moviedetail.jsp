<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 상세</title>
<style type="text/css">

/* 버튼 스타일 */
.footer {
    background-color: #333333;
    color: #ffffff;
    text-align: center;
    padding: 20px 0;
    position: fixed;
    bottom: 0;
    width: 100%;
    border-top: 1px solid #e0e0e0;
    z-index: 1000;
}

.footer-content {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
}

.footer p {
    margin: 0;
    font-size: 1.2em;
    font-weight: bold;
}

.team-list {
    list-style: none;
    padding: 0;
    margin: 10px 0 0 0;
}

.team-list li {
    display: inline;
    margin: 0 10px;
    font-size: 1em;
    font-weight: normal;
}

/* 기본적인 레이아웃 */
#contents_new23 {
    width: 100%;
    max-width: 1200px;
    margin: 100px auto; /* 네비게이션 바 아래 공간 추가 */
    padding: 20px;
    font-family: Arial, sans-serif;
    color: #333;
}

#contents {
    display: flex;
    flex-direction: row;
    background-color: #fff;
    border: 1px solid #ddd;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    padding: 20px;
}

.poster_info {
    flex: 1;
    margin-right: 20px; /* 이미지와 오른쪽 내용 사이에 공간 추가 */
}

.poster_info img {
    width: 100%;
    max-width: 300px;
    display: block;
    border-radius: 8px;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.2);
}

.detail_top_wrap {
    flex: 2;
}

.tit_info strong {
    font-size: 24px;
    font-weight: bold;
    color: #000;
    margin-bottom: 10px;
    display: block;
}

.mov_info1 {
    display: flex;
    gap: 10px; /* 항목 사이에 간격 추가 */
    align-items: center;
    font-size: 16px;
    margin-bottom: 20px;
    list-style-type: none; /* 기본 점 제거 */
}

.mov_info1 li::after {
    content: '|'; /* 각 항목 사이에 구분 기호 추가 */
    margin-left: 10px;
}

.mov_info1 li:last-child::after {
    content: ''; /* 마지막 항목에는 구분 기호 없앰 */
}

.txtarea_box {
    margin-top: 20px;
}

.txtarea span {
    font-size: 16px;
    line-height: 1.6;
    color: #444;
}

.button {
    display: inline-block;
    padding: 10px 20px;
    background-color: #ff5500;
    color: #fff;
    text-decoration: none;
    border-radius: 5px;
    transition: background-color 0.3s;
    margin-top: 20px;
}

.button:hover {
    background-color: #ff3300;
}

/* 탭 스타일 */
.tab_con {
    margin-top: 40px;
}

.innerfull.gray {
    background-color: #f9f9f9;
    padding: 20px 0;
}

.inner980 {
    max-width: 980px;
    margin: 0 auto;
}

.movi_tab_info1 h4 {
    font-size: 20px;
    font-weight: bold;
    margin-bottom: 20px;
}

.detail_info2 {
    list-style: none;
    padding: 0;
    margin: 0;
}

.detail_info2 li {
    display: flex;
    justify-content: space-between;
    font-size: 16px;
    padding: 10px 0;
    border-bottom: 1px solid #ddd;
}

.detail_info2 li em {
    font-weight: bold;
    color: #333;
}

.detail_info2 li span {
    color: #666;
}
</style>
</head>
<body>

    <div id="contents_new23">
    	<div id="contents" class="contents_movie_detail">
    		<div class="poster_info">
    			<img alt="영화상세" src="${movie.mo_image }">
    		</div>
    		<div class="detail_top_wrap new22">
    			<div class="tit_info">
    				<strong>${movie.mo_title }</strong>
    			</div>
    			<ul class="mov_info1">
    				<li><span class="roboto"><fmt:formatDate value="${movie.mo_date }" pattern="yyyy-MM-dd"/></span> <!-- 개봉일 --></li>
    				<li><span class="roboto">${movie.mo_time }</span> "분" <!-- 상영시간 --></li>
    				<li><span class="roboto">${movie.mo_age }</span> "세" <!-- 시청 가능 연령 --></li>
    			</ul>
    			<div class="txtarea_box movdetailtxt">
    				<div class="txtarea">
    					<span>${movie.mo_content }
    					</span>
    				</div>
    			</div>
    			<a href="#" class="button">예매하기</a>
    		</div>
    	</div>
  		<div class="tab_con">
  			<div class="innerfull gray">
  				<div class="inner980">
  					<div class="movi_tab_info1">
  						<h4 class="tit_info_type1">영화정보</h4>
  						<ul class="detail_info2">
  							<li><em>장르</em><span>장르/제작국가</span></li>
  							<li><em>감독</em><span>감독</span></li>
  							<li><em>출연</em><span>배우</span></li>
  						</ul>
  					</div>
  				</div>
  			</div>
  		</div>
   </div>
   <footer class="footer">
        <div class="footer-content">
            <p>Team Members:</p>
            <ul class="team-list">
                <li>성재경</li>
                <li>이현호</li>
                <li>장경민</li>
                <li>박광균</li>
            </ul>
        </div>
    </footer>
</body>
</html>