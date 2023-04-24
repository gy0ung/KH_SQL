-- 한줄 주석 : 단축키 ctrl + /
/* 
    여러줄 주석 : 단축키 alt + shifr + c
*/
-- 실행시 단축키 : ctrl + enter

-- test2 사용자 생성
create user c##test2 identified by 1234; 

-- 이를 회피하는 방법 (c##)생략
alter session set "_oracle_script" = true;


-- ■ 테이블을 생성하고 사용하려면 하기의 3가지를 해야함
-- 사용자 계정 생성은 SYSTEM, SYS 에서만 가능
-- 1. kh 사용자 생성
create user kh identified by 1234;

-- 2. kh 권한 부여
grant connect, resource to kh;

-- 3. 테이블스페이스 할당
-- alter user kh quota 30M on users;   -- 명시
alter user kh default tablespace users quota unlimited on users; -- 제한을 두지 않고


-- 사용자 삭제 (테이블이 없을 경우)
drop user c##test2;

-- 사용자 삭제 (테이블이 존재할 경우)
drop user c##test2 cascade;

-- 사용자 생성과 삭제는 한번씩만 실행할것!
-- 같은이름의 사용자 생성 불가 

create user DDL identified by 1234;
grant connect, resource to DDL;
alter user DDL default tablespace users quota unlimited on users;

create user practise identified by 1234;
grant connect, resource to practise;
alter user practise default tablespace users quota unlimited on users;

create user workspace identified by 1234;
grant connect, resource to workspace;
alter user workspace default tablespace users quota unlimited on users;

create user workbook identified by 1234;
grant connect, resource to workbook;
alter user workbook default tablespace users quota unlimited on users;









