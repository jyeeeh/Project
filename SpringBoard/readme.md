# 프로젝트 소개[Spring]

[Spring] 회원관리+게시판 CRUD

<br><br>

## 개발환경

- IntelliJ Ultimate
- open jdk 11
- mariadb 10
- mybatis
- JSP
- Tomcat 9

<br>

## 주요기능

- 회원가입
- 로그인
- 회원목록출력(상세조회,수정,삭제)
- ajax 이메일 중복체크
- 게시판 CRUD

<br>



## 화면구성


|구분| 설명 | URI | Method |
|--|-- | -- | -- |
|Member|회원가입-폼|/member/regist|get|
||회원가입|/member/regist|post|
||로그인-폼|/member/login|get|
||로그인|/member/login|post|
||회원목록조회|/member/|get|
||회원삭제하기|/member/delete|get|
||회원정보수정하기-폼|/member/update|get|
||회원정보수정하기|/memberupdate/|post|
||이메일중복확인|/member/email-check|post|

<div align=center>
  
**[메인화면]**

해당 버튼 클릭 시 해당 기능 실행

![1](https://github.com/jyeeeh/Project/assets/145963612/a75dc317-37e5-43c6-9734-f3b8adb1759a)

**[1. 회원가입]**

![2](https://github.com/jyeeeh/Project/assets/145963612/ecc74f0c-2780-44ad-a726-f6090a5db890)

회원가입 화면 - 이메일, 비밀번호, 이름, 나이, 전화번호 입력을 받을 수 있다.

|이메일 중복(전) | 중복해제 |
|-- | --|
|![3](https://github.com/jyeeeh/Project/assets/145963612/83484d85-5294-4603-a86d-aacfd539e3de)|![4](https://github.com/jyeeeh/Project/assets/145963612/04ef346d-fc6f-4320-bc04-17632cccb7d4)|

-이미 사용중인 이메일 입력 시 ajax로 중복체크 가능하다.
  
**[2. 로그인]**

  회원가입 완료 후 로그인 창으로 이동한다.
  ![5](https://github.com/jyeeeh/Project/assets/145963612/fd1c0b9e-891c-4483-ade6-a40381e9ec86)
  
-로그인 완료 후 Main화면으로 이동되며 내 정보 수정&로그아웃이 가능하다.

![11111](https://github.com/jyeeeh/Project/assets/145963612/04b29f39-bf74-494d-b87e-9bac4ec07b17)

-회원정보 수정 시 비밀번호를 올바르게 입력하면 이름, 나이, 핸드폰번호만 변경이 가능하다.

![6](https://github.com/jyeeeh/Project/assets/145963612/592f627e-d9bc-4c5c-b1b0-7116e86c9ca1)

-회원정보 수정이 완료되면 회원 정보 상세조회 화면으로 이동되며 올바르게 변경 되었는지 확인이 가능하다.
  
![7](https://github.com/jyeeeh/Project/assets/145963612/9e5109cd-b8c5-494a-9a94-e8cb77cc614e)

**[3. 회원목록 조회]**
  
현재 DB안에 있는 회원목록 리스트가 출력된다.

-조회 : 회원 정보 상세조회 이동

-삭제 : 해당하는 회원만 삭제

|삭제 전 | 삭제 후 |
|--|--|
|![8](https://github.com/jyeeeh/Project/assets/145963612/41ee210a-15d1-4942-bfd9-b24a59ac88ad)|![9](https://github.com/jyeeeh/Project/assets/145963612/978e58fb-c3cf-4181-a32b-3087b1546741)


</div>

|구분| 설명 | URI | Method |
|--|-- | -- | -- |
|Board|글작성-폼|/board/regist|get|
||글작성|/board/regist|post|
||글목록|/board/|get|
||글삭제하기|/board/delete|get|
||글수정하기-폼|/board/update|get|
||글수정하기|/board/update|post|

<div align=center>
  
**[4. 글작성]**
작성자, 비밀번호, 제목, 내용 입력 시 게시글 작성을 할 수 있다

![2-1](https://github.com/jyeeeh/Project/assets/145963612/3c9b8ef4-3335-485b-b702-be68cb28a3a0)

**[5. 글목록]**

글작성 성공 시 게시물 목록으로 이동한다.

![2-2](https://github.com/jyeeeh/Project/assets/145963612/7882da3b-e101-4db3-a1af-59cfa0d61522)

-제목을 클릭하면 해당 게시물 상세보기가 가능하다.

-상세보기로 들어가면 조회수 카운트가 된다.

-목록, 수정, 삭제가 가능하다.

![2-3](https://github.com/jyeeeh/Project/assets/145963612/9f39e56c-b262-4098-8cc3-365801415163)

</div>




<br>

## 에러

![Untitled](https://github.com/jyeeeh/Project/assets/145963612/0ad5fd44-27d9-4b23-981c-a51f197d3751)
1. 한글 깨짐

→ jsp 에 `<%@ **page** contentType="text/html;charset=UTF-8" language="java" %>` 누락

⇒ 전체적으로 선언 누락이 잦았다.
