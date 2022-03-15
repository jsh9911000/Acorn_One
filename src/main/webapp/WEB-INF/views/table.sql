-- 사용자(회원) 정보를 저장할 테이블
CREATE TABLE member(
   id VARCHAR2(100) PRIMARY KEY,
   pwd VARCHAR2(100) NOT NULL,
   email VARCHAR2(100),
   newpwd varchar2(15) NOT NULL,
   regdate DATE,
   name varchar2(10) not null,
   age number(5) not null,
   gender varchar2(5) not null
);