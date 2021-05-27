use portal;
-- class 테이블에 cl_test라는 속성을 추가
-- alter table class add cl_test int default 100 not null unique;
-- class 테이블 cl_test라는 속성을 삭제
-- alter table class drop cl_test;
-- class 테이블 cl_max_count의 기본값을 10으로 설정
alter table class modify cl_max_count int not null default 10;
desc class;