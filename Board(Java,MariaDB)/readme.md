# 프로젝트 소개

CRUD 기능이 포함되어있는 CLI 프로그램입니다.

키보드 입력을 받아 메인, 보조메뉴 선택을 하며 이동합니다.

<br>

# 기술 스택
<div style="display:flex; flex-direction:column; align-items:flex-start;">
<img src="https://img.shields.io/badge/Java-007396?style=for-the-badge&logo=Java&logoColor=white">
<img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=MySQL&logoColor=white">
<img src="https://img.shields.io/badge/IntelliJIDEA-000000?style=for-the-badge&logo=IntelliJIDEA&logoColor=white">
<img src="https://img.shields.io/badge/MariaDB-003545?style=for-the-badge&logo=MariaDB&logoColor=white">

<br>
<br>



# 화면 구성


**[메인페이지]**

게시물 목록을 보여주며

1. Create | 2. Read | 3. Clear | 4. Exit 中 입력을 받아 실행
 
![1](https://github.com/jyeeeh/Project/assets/145963612/47a3cd83-5326-4177-9170-b248dc513d07)

**[1. Create]**

- 새 게시물 입력 - 제목, 내용, 작성자 순으로 입력

![2](https://github.com/jyeeeh/Project/assets/145963612/f00b2dc2-146c-41ab-bf0f-bb9c5d4b2ed6)

전체 입력 후 보조메뉴를 통해 1. Ok, 2. Cancel 중 선택하게 하며 1번 클릭 시 게시물 리스트에 업로드 2번은 취소

![3](https://github.com/jyeeeh/Project/assets/145963612/10f0729b-b92e-480a-bd3f-fd6e7d5bec9f)

**[2. Read]**

- 게시물 읽기 - 게시물 목록에 no(게시물 리스트 번호)를 선택하면 해당 게시물의 제목, 내용, 작성자, 작성일자가 출력
- 보조메뉴로 1. Update | 2. Delete | 3. List 출력

![4](https://github.com/jyeeeh/Project/assets/145963612/f453f7f6-1754-4a0d-b724-5109d40dcc0b)

-1) Update 

선택한 게시물의 수정 내용(수정, 내용, 작성자)를 입력받고 Update 실행

![5](https://github.com/jyeeeh/Project/assets/145963612/65b61e7d-6be3-4f12-ade5-4ab975322bf0)

-2) Delete 

선택 게시물 삭제

![6](https://github.com/jyeeeh/Project/assets/145963612/1f655f89-b87d-4b53-982d-477cbfc1e9c3)

-3) List

현재 게시물 목록 리스트 출력

**[3. Clear]**

- 게시물 전체 삭제 - 보조메뉴로 삭제할건지 한번 더 물어보고 전체삭제 진행

![7](https://github.com/jyeeeh/Project/assets/145963612/5cd3311b-6c1b-4340-a90c-b27d0e612715)

**[4. Exit]**

- 게시판 실행 종료

![8](https://github.com/jyeeeh/Project/assets/145963612/f891842c-10dc-459f-ad66-04eaf4dc76cb)

<br>


## 에러
**update 시 [Data too long for column 'bwriter' at row 1] 발생**
<br>
: 지정해 놓은 값보다 더 큰 값을 넣어서 에러가 발생한다
<br>
-> 해당 column 최댓값 변경 조치 
