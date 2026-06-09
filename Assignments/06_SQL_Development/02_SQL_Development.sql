-- ==============================================
-- library 테이블 생성
-- ==============================================

-- tbl_member 생성
CREATE TABLE tbl_member(
  Member_id INT NULL,
  Member_name VARCHAR(45) NULL,
  Member_identity VARCHAR(45) NULL,
  Member_grade VARCHAR(45) NULL,
  Member_addr VARCHAR(45) NULL,
  Member_phone VARCHAR(45) NULL);
  
-- tbl_rental 생성
CREATE TABLE tbl_rental(
  Rental_id INT NULL,
  Book_code INT NULL,
  Member_id INT NULL);

-- tbl_book 생성
CREATE TABLE tbl_book(
  Book_code INT NULL,
  Classification_id INT NULL,
  book_author VARCHAR(45) NULL,
  book_name VARCHAR(45) NULL,
  publisher VARCHAR(45) NULL,
  isrental CHAR(1) NULL);


-- ==============================================
-- library 테이블 상세 설정
-- ==============================================

USE library;
DESC tbl_member; -- 조건 확인
DESC tbl_rental;
DESC tbl_book;

-- 0. tbl_rental의 Rental_id에 primary key 제약 조건 설정
ALTER TABLE tbl_rental ADD CONSTRAINT pk_tbl_rental PRIMARY KEY(Rental_id);
DESC tbl_rental;

-- 1. tbl_member의 Member_id에 Primary key 제약 조건 설정
ALTER TABLE tbl_member ADD CONSTRAINT pk_tbl_member PRIMARY KEY(Member_id);
DESC tbl_member;

-- 2. tbl_book의 Book_code에 primary key 제약 조건 설정
ALTER TABLE tbl_book ADD CONSTRAINT pk_tbl_book PRIMARY KEY(Book_code);
DESC tbl_book;

-- 3. tbl_rental의 Book_code에 <- tbl_book의 Book_code를 FK 설정 (cascade)
ALTER TABLE tbl_rental 
ADD CONSTRAINT fK_tbl_rental_tbl_book 
FOREIGN KEY(Book_code) -- 내 테이블 컬럼 명
REFERENCES tbl_book(Book_code) -- 가져올 테이블&컬럼
ON UPDATE CASCADE ON DELETE CASCADE;

DESC tbl_rental;

-- 4. tbl_rental의 Member_id에 <- tbl_member의 Member_id를 FK 설정
ALTER TABLE tbl_rental 
ADD CONSTRAINT fK_tbl_rental_tbl_member 
FOREIGN KEY(Member_id) 
REFERENCES tbl_member(Member_id) 
ON UPDATE CASCADE ON DELETE CASCADE;

DESC tbl_rental;

-- 5. 각 테이블에 값 넣기
INSERT INTO tbl_member VALUES
(111,"aaa",111,"일반","대구","010-111-2222"),
(222,"bbb",222,"VIP","울산","010-111-2222"),
(333,"ccc",333,"VIP","인천","010-111-2222"),
(444,"ddd",444,"일반","부산","010-111-2222"),
(555,"eee",555,"VIP","서울","010-111-2222"),
(666,"fff",666,"일반","경기","010-111-2222")
;
SELECT * FROM tbl_member;

INSERT INTO tbl_book VALUES
(1010, 1, "윤성우", "열혈C", "오렌지미디어", 1),
(1011, 1, "남궁성", "JAVA의정석", "00미디어", 1),
(1012, 1, "남길동", "이것이리눅스다", "한빛미디어", 1),
(2010, 2, "데일카네기", "인간관계론", "00미디어", 1),
(2011, 2, "홍길동", "미움받을용기", "00미디어", 1)
;
SELECT * FROM tbl_book;

INSERT INTO tbl_rental VALUES
(1, 1010, 111),
(2, 1011, 222),
(3, 1012, 333)
;
SELECT * FROM tbl_rental;

-- 6. 각 테이블의 제약 조건 확인

-- 6-1. tbl_member의 Primary key 확인
DESC tbl_member;

-- 6-2. tbl_book의 Primary key 확인
DESC tbl_book;

-- 6-3. tbl_rental 의 Foreign Key 확인
DESC tbl_rental;

-- 7. tbl_rental의 각 FK열(Book_code, Member_id)에 Index를 추가하고 확인
SELECT * FROM tbl_rental;

CREATE INDEX Book_code_idx ON tbl_rental(Book_code);
CREATE INDEX Member_id_idx ON tbl_rental(Member_id);

SHOW INDEX FROM tbl_rental;

-- 8. 다음 내용이 나오는 View 테이블을 만들고 사용 (조인 + 뷰 사용)
-- 뷰테이블명 : ShowRental_view
-- JOIN 종류 : Inner Join 사용할 것
-- 책을 대여한 회원에 대한 정보를 표시
-- Rental_id(tbl_rental), Member_name(tbl_member), book_name(tbl_book) 만 표시
SELECT * FROM tbl_member; -- member_id
SELECT * FROM tbl_rental; -- member_id, Book_code
SELECT * FROM tbl_book; -- Book_code

CREATE OR REPLACE VIEW ShowRental_view AS -- 뷰 이름
SELECT Rental_id, Member_name, book_name -- 필드 이름
FROM tbl_rental R -- 매칭 테이블 이름
INNER JOIN tbl_member M ON R.Member_id = M.Member_id 
INNER JOIN tbl_book B ON R.Book_code = B.Book_code;  

-- 뷰 사용하기
SELECT * FROM ShowRental_view;








