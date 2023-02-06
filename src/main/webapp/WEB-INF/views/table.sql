-- 사용자(회원) 정보를 저장할 테이블
CREATE TABLE users(
   id VARCHAR2(100) PRIMARY KEY,
   pwd VARCHAR2(100) NOT NULL,
   email VARCHAR2(100),
   newpwd varchar2(15) NOT NULL,
   regdate DATE,
   name varchar2(10) not null,
   gender varchar2(5) not null
);

CREATE TABLE products(
   pro_num number PRIMARY KEY,
   pro_name VARCHAR2(50) NOT NULL,
   pro_price number,
   pro_cate number,
   remain_stock number,
   imagePath varchar2(100)
);

CREATE TABLE baskets(
   p_num number,
   p_name VARCHAR2(50),
   p_price number,
   b_num number,
   u_name varchar2(50),
   gender varchar2(50)
);

CREATE TABLE master(
   p_num number,
   p_name VARCHAR2(50),
   p_price number,
   b_num number,
   u_name varchar2(50),
   gender varchar2(50)
);

create sequence users_seq;

create sequence products_seq;
