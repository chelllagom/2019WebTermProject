<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>인테리어소품 코제트</title>
<link href="../../css/layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
  <div id="wrapper">
    <!-- header -->
    <header>
      <div class="container">
        <h1 class="logo">logo</h1>
        <div class="login">
          <p><a href="#">login</a></p>
        </div>
        <div class="gnb">
          <p><a href="#">menu</a></p>
          <div class="gnb_wrap">
            <div class="close"><a href="#">close</a></div>
            <div class="gnb_container">
              <ul>
                <li class="menu mpypate_tab">
                  <a href="javascript:void(0)"><span>마이페이지</span></a>
                  <div class="slide on">
                    <div>
                      <ul>
                        <li><span>아이디/비번찾기</span></li>
                        <li><span>회원정보수정</span></li>
                        <li><span>MY 서비스 현황</span></li>
                        <li><span>회원 주소록</span></li>
                      </ul>
                    </div>
                  </div>
                </li>
                <li class="menu menu_tab">
                  <a href="javascript:void(0)"><span>메뉴보기</span></a>
                  <div class="slide">
                    <ul>
                      <li class="on"><a href="javascript:void(0)"><span>동우회소개</span></a>

                        <div>
                          <ul>
                            <li><a href="javascript:void(0)"><span>회장인사말</span></a></li>
                            <li><a href="javascript:void(0)"><span>연혁</span></a></li>
                            <li class="aa"><a href="javascript:void(0)"><span>조직도</span></a>

                              <div>
                                <ul>
                                  <li><a href="javascript:void(0)"><span>- 조직도</span></a></li>
                                  <li><a href="javascript:void(0)"><span>- 임무</span></a></li>
                                  <li><a href="javascript:void(0)"><span>- 정관</span></a></li>
                                </ul>
                              </div>

                            </li>
                            <li><a href="javascript:void(0)"><span>구성원</span></a></li>
                            <li><a href="javascript:void(0)"><span>오시는길</span></a></li>
                          </ul>
                        </div>

                      </li>
                      <li><a href="javascript:void(0)"><span>주요사업 및 활동</span></a>
                        <div>
                          <ul>
                            <li><a href="javascript:void(0)"><span>menu1</span></a>

                              <div>
                                <ul>
                                  <li><a href="javascript:void(0)"><span>menu1</span></a></li>
                                  <li><a href="javascript:void(0)"><span>조직도</span></a></li>
                                  <li><a href="javascript:void(0)"><span>구성원</span></a></li>
                                  <li><a href="javascript:void(0)"><span>오시는길</span></a></li>
                                </ul>
                              </div>

                            </li>
                            <li><a href="javascript:void(0)"><span>조직도</span></a></li>
                            <li><a href="javascript:void(0)"><span>구성원</span></a></li>
                            <li><a href="javascript:void(0)"><span>오시는길</span></a></li>
                          </ul>
                        </div>
                      </li>
                      <li><a href="javascript:void(0)"><span>경조사비신청</span></a></li>
                      <li><a href="javascript:void(0)"><span>KT수련관신청</span></a></li>
                      <li><a href="javascript:void(0)"><span>동우회 소식</span></a></li>
                      <li><a href="javascript:void(0)"><span>지역본부동우회</span></a></li>
                      <li><a href="javascript:void(0)"><span>열린마당</span></a></li>
                    </ul>
                  </div>

                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </header>
    <!-- header -->
    <section>
      <!-- 마이페이지, 회원정보 수정 탭 -->
      <div class="section_tab">
        <div class="tab">
          <div>
            <ul>
              <li>
                <a href="#"><span>마이페이지</span><span class="icon_down">down</span></a>
                <div>
                  <ul>
                    <li><a href="#" class="on"><span>회원가입안내</span></a>
                      <div>
                        <ul>
                          <li><a href="#"><span>회원가입</span></a></li>
                        </ul>
                      </div>
                    </li>
                    <li><a href="#"><span>MY 서비스 현황</span></a>
                      <div>
                        <ul>
                          <li><a href="#"><span>신청하기</span></a></li>
                          <li><a href="#"><span>신청내역확인</span></a></li>
                        </ul>
                      </div>
                    </li>
                  </ul>
                  <span class="icon_down">down</span>
                </div>
              </li>
            </ul>

          </div>

        </div>

      </div>


      <!-- 회원 정보 수정 -->
      <div class="modify displayYn on">
        <!-- content_Top -->
        <div class="content_Top">
          <div class="title">
            <p>마이페이지</p>
            <h1><span>회원정보수정</span></h1>
          </div>
        </div>
        <!-- content_Top -->
        <!-- content_body -->
        <div class="content_body">
          <form action="userservice/my_service.html" method="get">
          <table>
            <tbody>
              <tr>
                <td>아이디</td>
                <td><span>ktds2018</span></td>
              </tr>
              <tr>
                <td>비밀번호</td>
                <td><input type="password" name="psw" required></td>
              </tr>
              <tr>
                <td>비밀번호<br /> 재확인</td>
                <td><input type="password" name="psw" required></td>
              </tr>
              <tr>
                <td>희망 지회</td>
                <td>
                  <select name='meeting'>
                    <option value='' selected>본회</option>
                    <option value=''></option>
                    <option value=''></option>
                    <option value=''></option>
                  </select>

                  <select name='meeting_main'>
                    <option value='' selected>본회자체</option>
                    <option value=''></option>
                    <option value=''></option>
                    <option value=''></option>
                  </select>
                </td>
              </tr>
              <tr>
                <td>이름</td>
                <td>
                  <span>추원식</span>
                  <div class="name_gender">
                    <input type="radio" name="gender" id="male">
                    <span>
                      <label for="male">남</label>
                    </span>
                    <input type="radio" name="gender" id="female">
                    <span>
                      <label for="female">여</label>
                    </span>
                  </div>
                </td>
              </tr>
              <tr>
                <td>생년월일</td>
                <td>
                  <input type="text" placeholder="1984-08-10" name="birthday">
                  <button type="button" name="calendar">달력</button>
                </td>
              </tr>
              <tr>
                <td>현주소</td>
                <td>
                  <input type="text" placeholder="1234-12" name="address" required>
                  <button type="button" name="address_seach">우편번호 검색</button>
                  <input type="text" placeholder="서울특별시 강남구 논현동 13길 24" name="address_all">
                </td>
              </tr>
              <tr>
                <td>휴대폰</td>
                <td>
                  <select name='hp'>
                    <option value='' selected>010</option>
                    <option value=''></option>
                    <option value=''></option>
                    <option value=''></option>
                  </select>
                  -
                  <input type="text" placeholder="9995" name="hp">
                  -
                  <input type="text" placeholder="9995" name="hp">
                </td>
              </tr>
              <tr>
                <td>전화</td>
                <td>
                  <select name='tel'>
                    <option value='' selected>02</option>
                    <option value=''></option>
                    <option value=''></option>
                    <option value=''></option>
                  </select>
                  -
                  <input type="text" name="tel">
                  -
                  <input type="text" name="tel">
                  <div class="tel_none_btn">
                    <input type="checkbox" id="tel_none">
                    <div>
                      <label for="tel_none"><span>없음</span></label>
                    </div>
                  </div>
                </td>
              </tr>
              <tr>
                <td>이메일</td>
                <td>
                  <select name='mail'>
                    <option value='' selected>eggzzang1</option>
                    <option value=''></option>
                    <option value=''></option>
                    <option value=''></option>
                  </select>
                  @
                  <select name='mail'>
                    <option value='' selected>naver.com</option>
                    <option value=''></option>
                    <option value=''></option>
                    <option value=''></option>
                  </select>
                </td>
              </tr>
            </tbody>
          </table>

          <div class="btn">
            <div>
              <div>
                <button type="button" name="reset">취소</button>
              </div>
              <div>
                <button type="button" name="submit">확인</button>
              </div>
            </div>
          </div>
          </form>
        </div>
      </div>
      <!-- 회원 정보 수정 -->

      <!-- MY 서비스 현황 -->
      <div class="my_service displayYn">
        <!-- content_Top -->
        <div class="content_Top">
          <div class="title">
            <p>마이페이지</p>
            <h1><span>MY 서비스 현황</span></h1>
          </div>
        </div>
        <!-- content_Top -->
        <!-- content_body -->
        <div class="content_body">
          <table class="info">
            <tbody>
              <tr>
                <td>이름</td>
                <td>추원식(남)</td>
                <td>생년월일</td>
                <td>1984-08-10</td>
              </tr>
              <tr>
                <td>소속지회</td>
                <td colspan="3">본회(본회자체)</td>
              </tr>
              <tr>
                <td>회원구분</td>
                <td>정회원</td>
                <td>단체상해보험</td>
                <td>미가입</td>
              </tr>
              <tr>
                <td>휴대폰</td>
                <td colspan="3">010-9995-9995</td>
              </tr>
              <tr>
                <td>전화</td>
                <td colspan="3">-</td>
              </tr>
              <tr>
                <td>이메일</td>
                <td colspan="3">eggzzang1@naver.com</td>
              </tr>

            </tbody>
          </table>

          <div class="details">
            <div class="table payment">
              <h2 class="details_title"><span>01</span>회비 납부 내역</h2>
              <table class="tt">
                <thead>
                  <tr>
                    <td>구분</td>
                    <td>입회비</td>
                    <td>연회비</td>
                  </tr>
                </thead>
              </table>
              <table>
                <tbody>
                  <tr>
                    <td>본회</td>
                    <td>납부</td>
                    <td>2018년 (완납)</td>
                  </tr>
                </tbody>
              </table>
            </div>

            <div class="table">
              <h2 class="details_title"><span>02</span>경조사비 신청 내역</h2>
              <table class="tt">
                <thead>
                  <tr>
                    <td>접수</td>
                    <td>대기</td>
                    <td>승인</td>
                    <td>거절</td>
                    <td>총계</td>
                  </tr>
                </thead>
              </table>
              <table>
                <tbody>
                  <tr>
                    <td>0</td>
                    <td>0</td>
                    <td>0</td>
                    <td>0</td>
                    <td>0</td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div class="table">
              <h2 class="details_title"><span>03</span>KT수련관 신청 내역</h2>
              <table class="tt">
                <thead>
                  <tr>
                    <td>접수</td>
                    <td>대기</td>
                    <td>승인</td>
                    <td>거절</td>
                    <td>총계</td>
                  </tr>
                </thead>
              </table>
              <table>
                <tbody>
                  <tr>
                    <td>0</td>
                    <td>0</td>
                    <td>0</td>
                    <td>0</td>
                    <td>0</td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div class="table">
              <h2 class="details_title"><span>04</span>의료 수혜 내역</h2>
              <table class="tt">
                <thead>
                  <tr>
                    <td>총계</td>
                  </tr>
                </thead>
              </table>
              <table>
                <tbody>
                  <tr>
                    <td>0</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>


      </div>
      <!-- MY 서비스 현황 -->

      <!-- 회원주소록 -->
      <div class="member_address displayYn">
        <div class="content">
          <div class="content_Top">
            <div class="title">
              <p>마이페이지</p>
              <h1><span>회원주소록</span></h1>
            </div>
          </div>
          <!-- content_Top -->
          <!-- content_body -->
          <div class="content_body">
            <div class="container_top">
              <div>
                <select name='affiliate'>
                  <option value='' selected>소속명</option>
                  <option value=''></option>
                  <option value=''></option>
                  <option value=''></option>
                </select>
              </div>
              <div>
                <input type="text" name="name" placeholder="이름을 입력해주세요.">
              </div>
              <div>
                <button type="button" name="button">검색</button>
              </div>
            </div>

            <div class="container_body">
              <!-- box -->
              <div class="box">
                <div class="box_content">
                  <div><span>100</span></div>
                  <div><span>이지은</span></div>
                  <div><span>본회</span></div>
                  <div><button type="button" name="add">자세히보기</button></div>
                </div>
              </div>
              <!-- box -->

              <!-- box -->
              <div class="box">
                <div class="box_content">
                  <div><span>99</span></div>
                  <div><span>이지은</span></div>
                  <div><span>본회</span></div>
                  <div><button type="button" name="add">자세히보기</button></div>
                </div>
              </div>
              <!-- box -->

              <!-- box -->
              <div class="box">
                <div class="box_content">
                  <div><span>98</span></div>
                  <div><span>이지은</span></div>
                  <div><span>본회</span></div>
                  <div><button type="button" name="add">자세히보기</button></div>
                </div>
              </div>
              <!-- box -->

              <!-- box -->
              <div class="box">
                <div class="box_content">
                  <div><span>97</span></div>
                  <div><span>이지은</span></div>
                  <div><span>본회</span></div>
                  <div><button type="button" name="add">자세히보기</button></div>
                </div>
              </div>
              <!-- box -->

              <!-- box -->
              <div class="box">
                <div class="box_content">
                  <div><span>96</span></div>
                  <div><span>이지은</span></div>
                  <div><span>본회</span></div>
                  <div><button type="button" name="add">자세히보기</button></div>
                </div>
              </div>
              <!-- box -->

              <!-- box -->
              <div class="box">
                <div class="box_content">
                  <div><span>95</span></div>
                  <div><span>이지은</span></div>
                  <div><span>본회</span></div>
                  <div><button type="button" name="add">자세히보기</button></div>
                </div>
              </div>
              <!-- box -->

              <!-- box -->
              <div class="box">
                <div class="box_content">
                  <div><span>94</span></div>
                  <div><span>이지은</span></div>
                  <div><span>본회</span></div>
                  <div><button type="button" name="add">자세히보기</button></div>
                </div>
              </div>
              <!-- box -->

              <!-- box -->
              <div class="box">
                <div class="box_content">
                  <div><span>93</span></div>
                  <div><span>이지은</span></div>
                  <div><span>본회</span></div>
                  <div><button type="button" name="add">자세히보기</button></div>
                </div>
              </div>
              <!-- box -->

              <!-- box -->
              <div class="box">
                <div class="box_content">
                  <div><span>92</span></div>
                  <div><span>이지은</span></div>
                  <div><span>본회</span></div>
                  <div><button type="button" name="add">자세히보기</button></div>
                </div>
              </div>
              <!-- box -->

              <!-- box -->
              <div class="box">
                <div class="box_content">
                  <div><span>91</span></div>
                  <div><span>이지은</span></div>
                  <div><span>본회</span></div>
                  <div><button type="button" name="add">자세히보기</button></div>
                </div>
              </div>
              <!-- box -->
            </div>
            <!-- container_body -->
            <!-- list -->
            <div class="list">
              <div class="list_container">
                <div class="prev"><a href="#"><span>prev</span></a></div>
                <ul>
                  <li class="on">1</li>
                  <li>2</li>
                  <li>3</li>
                  <li>4</li>
                  <li>5</li>
                </ul>
                <div class="next"><a href="#"><span>next</span></a></div>
              </div>
            </div>
            <!-- list -->

          </div>
        </div>


        <!-- 회원주소록_상세 -->

        <!-- content_body -->
        <div class="content_body member_address_info">
          <table>
            <tbody>
              <tr>
                <td>이름</td>
                <td><span>이지은</span></td>
              </tr>
              <tr>
                <td>전화번호</td>
                <td><span>010-6695-0000</span> / <span>02-0000-0000</span></td>
              </tr>
              <tr>
                <td>현주소</td>
                <td>
                  <span>(1234-12)</span><br />
                  <span>서울특별시 강남구 논현동 13길 24 대암빌딩 203호</span>
                </td>
              </tr>
              <tr>
                <td>소속지회</td>
                <td>
                  <span>이지은</span>
                </td>
              </tr>
              <tr>
                <td>회원구분</td>
                <td>
                  <span>-</span>
                </td>
              </tr>

            </tbody>
          </table>

          <div class="btn">
            <div>
              <div>
                <button type="button" class="list_go">목록</button>
              </div>
            </div>
          </div>
        </div>
        <!-- 회원주소록_상세 -->

      </div>
      <!-- 회원주소록 -->



    </section>

    <!-- footer -->
    <footer>
      <div class="content">

        <div class="content_body">
          <p>사단법인케이티동우회</p>
          <p>서울시 광진구 아차산로 416 KT광진지사 1층 KT동우회</p>
          <p><span>TEL. 02 755 0007</span> <span>FAX. 02 755 2247</span></p>
        </div>

        <div class="button">
          <a href="#">PC 버전보기</a>
        </div>
        <div class="up"><a href="#">up</a></div>
      </div>
    </footer>
    <!-- footer -->
  </div>
  <script src="./dist/js/jquery-1.12.4.min.js" charset="utf-8"></script>
  <script src="./dist/js/common.js" charset="utf-8"></script>
  <script src="./dist/js/join.js" charset="utf-8"></script>
  <script src="./dist/js/mypage.js" charset="utf-8"></script>

</body>

</html>
