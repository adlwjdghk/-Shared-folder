-- 상품테이블
DROP TABLE tbl_pdt;
CREATE TABLE tbl_pdt(
    pno NUMBER PRIMARY KEY,
    pname VARCHAR2(500) NOT NULL,
    ptype VARCHAR2(200),
    pmemo VARCHAR2(1000),
    price NUMBER DEFAULT 0,
    avail_cnt NUMBER DEFAULT 0,
    sale_cnt NUMBER DEFAULT 0,
    regdate DATE DEFAULT SYSDATE
);

DROP SEQUENCE seq_pdt;
CREATE SEQUENCE seq_pdt
    START WITH 1
    INCREMENT BY 1
    NOCYCLE;
    
    
INSERT INTO tbl_pdt(pno, pname, ptype, pmemo, price, avail_cnt, sale_cnt)
VALUES(seq_pdt.NEXTVAL,'오요요 포근포근 텐트','하우스','포근포근텐트',29500,3,10);
INSERT INTO tbl_pdt(pno, pname, ptype, pmemo, price, avail_cnt, sale_cnt)
VALUES(seq_pdt.NEXTVAL,'ANF 6FREE 플러스 소고기 연어 5.6kg','사료','1',38000,5,4);
INSERT INTO tbl_pdt(pno, pname, ptype, pmemo, price, avail_cnt, sale_cnt)
VALUES(seq_pdt.NEXTVAL,'프레스키 터키츄 칠면조힘줄 하드링 M','캔/껌','1',8900,3,1);
INSERT INTO tbl_pdt(pno, pname, ptype, pmemo, price, avail_cnt, sale_cnt)
VALUES(seq_pdt.NEXTVAL,'풀무원 아미오 헬씨믹스 트릿 눈물 눈물자국 100g','영양제','1',38000,1,0);
INSERT INTO tbl_pdt(pno, pname, ptype, pmemo, price, avail_cnt, sale_cnt)
VALUES(seq_pdt.NEXTVAL,'브리더 캐릭터 장난감 문어','장난감','1',2500,10,0);
INSERT INTO tbl_pdt(pno, pname, ptype, pmemo, price, avail_cnt, sale_cnt)
VALUES(seq_pdt.NEXTVAL,'쥬쥬베 노즈워크 트릿볼 핑크','노즈워크','1',4500,0,5);
INSERT INTO tbl_pdt(pno, pname, ptype, pmemo, price, avail_cnt, sale_cnt)
VALUES(seq_pdt.NEXTVAL,'페로가토 구름 원형 강아지 방석 (색상선택가능) - 중형','방석/쿠션','1',21900,7,2);
INSERT INTO tbl_pdt(pno, pname, ptype, pmemo, price, avail_cnt, sale_cnt)
VALUES(seq_pdt.NEXTVAL,'네츄럴코어 강아지 베네 M32','사료','1',38000,4,8);
INSERT INTO tbl_pdt(pno, pname, ptype, pmemo, price, avail_cnt, sale_cnt)
VALUES(seq_pdt.NEXTVAL,'네츄럴코어 강아지용 캔','캔/껌','1',1200,1,7);
INSERT INTO tbl_pdt(pno, pname, ptype, pmemo, price, avail_cnt, sale_cnt)
VALUES(seq_pdt.NEXTVAL,'건강한 육포','스틱/큐브/소시지','1',3500,9,8);
INSERT INTO tbl_pdt(pno, pname, ptype, pmemo, price, avail_cnt, sale_cnt)
VALUES(seq_pdt.NEXTVAL,'가또블랑코 로블레 식탁 소형 2구','급여그릇','1',56000,1,2);
INSERT INTO tbl_pdt(pno, pname, ptype, pmemo, price, avail_cnt, sale_cnt)
VALUES(seq_pdt.NEXTVAL,'네츄럴코어 강아지용 미트스틱 20P','스틱/큐브/소시지','1',8900,5,6);

SELECT * FROM tbl_pdt;

SELECT rownum rnum, best.*
FROM(SELECT * FROM tbl_pdt
     ORDER BY sale_cnt DESC
     ) best;
     
SELECT *
FROM(SELECT rownum rnum, best.*
     FROM(SELECT * FROM tbl_pdt
          WHERE avail_cnt > 0
          ORDER BY sale_cnt DESC
          ) best
    )
WHERE rnum between 1 and 5;
SELECT COUNT(*) FROM tbl_pdt;

COMMIT;