DROP TABLE RESERVED_COURSE CASCADE CONSTRAINTS;
DROP TABLE PAYED_COURSE CASCADE CONSTRAINTS;
DROP TABLE WALLET_HISTORY CASCADE CONSTRAINTS;
DROP TABLE COMMENTS CASCADE CONSTRAINTS;
DROP TABLE POST CASCADE CONSTRAINTS;
DROP TABLE REVIEW CASCADE CONSTRAINTS;
DROP TABLE RESERVATION CASCADE CONSTRAINTS;
DROP TABLE COURSE CASCADE CONSTRAINTS;
DROP TABLE USER_ROLE CASCADE CONSTRAINTS;
DROP TABLE TIME_PERIOD CASCADE CONSTRAINTS;
DROP TABLE CLASSROOM CASCADE CONSTRAINTS;
DROP TABLE SUBJECT CASCADE CONSTRAINTS;
DROP TABLE IMAGE CASCADE CONSTRAINTS;
DROP TABLE USERS CASCADE CONSTRAINTS;

DROP SEQUENCE USERS_SEQ;
DROP SEQUENCE USER_ROLE_SEQ;
DROP SEQUENCE REVIEW_SEQ;
DROP SEQUENCE COURSE_SEQ;
DROP SEQUENCE RESERVED_COURSE_SEQ;
DROP SEQUENCE SUBJECT_SEQ;
DROP SEQUENCE CLASSROOM_SEQ;
DROP SEQUENCE TIME_PERIOD_SEQ;
DROP SEQUENCE WALLET_HISTORY_SEQ;
DROP SEQUENCE RESERVATION_SEQ;
DROP SEQUENCE POST_SEQ;
DROP SEQUENCE COMMENTS_SEQ;
DROP SEQUENCE PAYED_COURSE_SEQ;
DROP SEQUENCE IMAGE_SEQ;

CREATE SEQUENCE USERS_SEQ START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE USER_ROLE_SEQ START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE REVIEW_SEQ START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE COURSE_SEQ START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE RESERVED_COURSE_SEQ START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE SUBJECT_SEQ START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE CLASSROOM_SEQ START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE TIME_PERIOD_SEQ START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE WALLET_HISTORY_SEQ START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE RESERVATION_SEQ START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE POST_SEQ START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE COMMENTS_SEQ START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE PAYED_COURSE_SEQ START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE IMAGE_SEQ START WITH 1 INCREMENT BY 1;

CREATE TABLE USERS (
                       ID NUMBER(19,0) NOT NULL,
                       EMAIL VARCHAR2(30) NOT NULL,
                       USERNAME VARCHAR2(20) NOT NULL,
                       PASSWORD VARCHAR2(255) NOT NULL,
                       FULL_NAME VARCHAR2(50) NOT NULL,
                       PHONE VARCHAR2(11) NULL,
                       CREATED_AT DATE NOT NULL,
                       MODIFIED_AT DATE NULL,
                       CONSTRAINT PK_USERS PRIMARY KEY (ID)
);

CREATE TABLE USER_ROLE (
                           ID NUMBER(19,0) NOT NULL,
                           USER_ID NUMBER(19,0) NOT NULL,
                           ROLE VARCHAR2(20) NOT NULL,
                           CONSTRAINT PK_USER_ROLE PRIMARY KEY (ID),
                           CONSTRAINT FK_USER_ROLE_USER FOREIGN KEY (USER_ID) REFERENCES USERS(ID)
);

CREATE TABLE SUBJECT (
                         ID NUMBER(19,0) NOT NULL,
                         NAME VARCHAR2(20) NOT NULL,
                         CREATED_AT DATE NOT NULL,
                         MODIFIED_AT DATE NULL,
                         CONSTRAINT PK_SUBJECT PRIMARY KEY (ID)
);

CREATE TABLE CLASSROOM (
                           ID NUMBER(19,0) NOT NULL,
                           NAME VARCHAR2(30) NOT NULL,
                           SEAT_NUMBER NUMBER(10,0) NOT NULL,
                           CONSTRAINT PK_CLASSROOM PRIMARY KEY (ID)
);

CREATE TABLE TIME_PERIOD (
                             ID NUMBER(19,0) NOT NULL,
                             CLASSROOM_ID NUMBER(19,0) NOT NULL,
                             PERIOD VARCHAR2(30) NOT NULL,
                             IS_USED NUMBER(1,0) NOT NULL,
                             CONSTRAINT PK_TIME_PERIOD PRIMARY KEY (ID),
                             CONSTRAINT FK_TIME_PERIOD_CLASSROOM FOREIGN KEY (CLASSROOM_ID) REFERENCES CLASSROOM(ID)
);

CREATE TABLE COURSE (
                        ID NUMBER(19,0) NOT NULL,
                        SUBJECT_ID NUMBER(19,0) NOT NULL,
                        TEACHER_ID NUMBER(19,0) NOT NULL,
                        TIME_PERIOD_ID NUMBER(19,0) NOT NULL,
                        NAME VARCHAR2(255) NOT NULL,
                        DESCRIPTION VARCHAR2(4000) NULL,
                        PRICE NUMBER(10,0) NOT NULL,
                        START_DATE DATE NOT NULL,
                        LAST_DATE DATE NOT NULL,
                        AVERAGE_SCORE NUMBER(2,1) NULL,
                        REMAINED_SEAT NUMBER(10,0) NOT NULL,
                        CREATED_AT DATE NOT NULL,
                        MODIFIED_AT DATE NULL,
                        CONSTRAINT PK_COURSE PRIMARY KEY (ID),
                        CONSTRAINT FK_COURSE_SUBJECT FOREIGN KEY (SUBJECT_ID) REFERENCES SUBJECT(ID),
                        CONSTRAINT FK_COURSE_TEACHER FOREIGN KEY (TEACHER_ID) REFERENCES USERS(ID),
                        CONSTRAINT FK_COURSE_TIME_PERIOD FOREIGN KEY (TIME_PERIOD_ID) REFERENCES TIME_PERIOD(ID)
);

CREATE TABLE REVIEW (
                        ID NUMBER(19,0) NOT NULL,
                        COURSE_ID NUMBER(19,0) NOT NULL,
                        WRITER_ID NUMBER(19,0) NOT NULL,
                        SCORE NUMBER(1,0) NOT NULL,
                        CONTENT VARCHAR2(4000) NOT NULL,
                        CREATED_AT DATE NOT NULL,
                        MODIFIED_AT DATE NULL,
                        CONSTRAINT PK_REVIEW PRIMARY KEY (ID),
                        CONSTRAINT FK_REVIEW_COURSE FOREIGN KEY (COURSE_ID) REFERENCES COURSE(ID),
                        CONSTRAINT FK_REVIEW_WRITER FOREIGN KEY (WRITER_ID) REFERENCES USERS(ID)
);

CREATE TABLE WALLET_HISTORY (
                                ID NUMBER(19,0) NOT NULL,
                                USER_ID NUMBER(19,0) NOT NULL,
                                ADDED_AMOUNT NUMBER(10,0) NULL,
                                USED_AMOUNT NUMBER(10,0) NULL,
                                EARNED_AMOUNT NUMBER(10,0) NULL,
                                REFUNDED_AMOUNT NUMBER(10,0) NULL,
                                CURRENT_AMOUNT NUMBER(10,0) NOT NULL,
                                CREATED_AT DATE NOT NULL,
                                CONSTRAINT PK_WALLET_HISTORY PRIMARY KEY (ID),
                                CONSTRAINT FK_WALLET_HISTORY_USER FOREIGN KEY (USER_ID) REFERENCES USERS(ID)
);

CREATE TABLE RESERVATION (
                             ID NUMBER(19,0) NOT NULL,
                             STUDENT_ID NUMBER(19,0) NOT NULL,
                             CREATED_AT DATE NOT NULL,
                             CONSTRAINT PK_RESERVATION PRIMARY KEY (ID),
                             CONSTRAINT FK_RESERVATION_STUDENT FOREIGN KEY (STUDENT_ID) REFERENCES USERS(ID)
);

CREATE TABLE RESERVED_COURSE (
                                 ID NUMBER(19,0) NOT NULL,
                                 COURSE_ID NUMBER(19,0) NOT NULL,
                                 RESERVATION_ID NUMBER(19,0) NOT NULL,
                                 CREATED_AT DATE NOT NULL,
                                 CONSTRAINT PK_RESERVED_COURSE PRIMARY KEY (ID),
                                 CONSTRAINT FK_RESERVED_COURSE_COURSE FOREIGN KEY (COURSE_ID) REFERENCES COURSE(ID),
                                 CONSTRAINT FK_RESERVED_COURSE_RESERVATION FOREIGN KEY (RESERVATION_ID) REFERENCES RESERVATION(ID)
);

CREATE TABLE POST (
                      ID NUMBER(19,0) NOT NULL,
                      WRITER_ID NUMBER(19,0) NOT NULL,
                      SUBJECT VARCHAR2(100) NULL,
                      CONTENT VARCHAR2(4000) NOT NULL,
                      VIEW_COUNT NUMBER(10,0) NOT NULL,
                      CREATED_AT DATE NOT NULL,
                      MODIFIED_AT DATE NULL,
                      CONSTRAINT PK_POST PRIMARY KEY (ID),
                      CONSTRAINT FK_POST_WRITER FOREIGN KEY (WRITER_ID) REFERENCES USERS(ID)
);

CREATE TABLE COMMENTS (
                          ID NUMBER(19,0) NOT NULL,
                          POST_ID NUMBER(19,0) NOT NULL,
                          WRITER_ID NUMBER(19,0) NOT NULL,
                          CONTENT VARCHAR2(4000) NOT NULL,
                          CREATED_AT DATE NOT NULL,
                          MODIFIED_AT DATE NULL,
                          CONSTRAINT PK_COMMENTS PRIMARY KEY (ID),
                          CONSTRAINT FK_COMMENTS_POST FOREIGN KEY (POST_ID) REFERENCES POST(ID),
                          CONSTRAINT FK_COMMENTS_WRITER FOREIGN KEY (WRITER_ID) REFERENCES USERS(ID)
);

CREATE TABLE PAYED_COURSE (
                              ID NUMBER(19,0) NOT NULL,
                              COURSE_ID NUMBER(19,0) NOT NULL,
                              RESERVATION_ID NUMBER(19,0) NOT NULL,
                              MODIFIED_AT DATE NULL,
                              PAYED_AT DATE NULL,
                              PAYED_AMOUNT NUMBER(10,0) NOT NULL,
                              IS_REFUNDED NUMBER(1,0) NOT NULL,
                              REFUNDED_AT DATE NULL,
                              IS_EXPIRED NUMBER(1,0) NOT NULL,
                              CONSTRAINT PK_PAYED_COURSE PRIMARY KEY (ID),
                              CONSTRAINT FK_PAYED_COURSE_COURSE FOREIGN KEY (COURSE_ID) REFERENCES COURSE(ID),
                              CONSTRAINT FK_PAYED_COURSE_RESERVATION FOREIGN KEY (RESERVATION_ID) REFERENCES RESERVATION(ID)
);

CREATE TABLE IMAGE (
                       ID NUMBER(19,0) NOT NULL,
                       TARGET_ID NUMBER(19,0) NOT NULL,
                       TARGET_TYPE VARCHAR2(20) NOT NULL,
                       NAME VARCHAR2(20) NULL,
                       IMAGE_FILE BLOB,
                       CREATED_AT DATE NOT NULL,
                       MODIFIED_AT DATE NULL,
                       CONSTRAINT PK_IMAGE PRIMARY KEY (ID)
);

CREATE OR REPLACE TRIGGER USERS_TRG
BEFORE INSERT ON USERS
FOR EACH ROW
BEGIN
    :NEW.ID := USERS_SEQ.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER USER_ROLE_TRG
BEFORE INSERT ON USER_ROLE
FOR EACH ROW
BEGIN
    :NEW.ID := USER_ROLE_SEQ.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER REVIEW_TRG
BEFORE INSERT ON REVIEW
FOR EACH ROW
BEGIN
    :NEW.ID := REVIEW_SEQ.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER COURSE_TRG
BEFORE INSERT ON COURSE
FOR EACH ROW
BEGIN
    :NEW.ID := COURSE_SEQ.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER RESERVED_COURSE_TRG
BEFORE INSERT ON RESERVED_COURSE
FOR EACH ROW
BEGIN
    :NEW.ID := RESERVED_COURSE_SEQ.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER SUBJECT_TRG
BEFORE INSERT ON SUBJECT
FOR EACH ROW
BEGIN
    :NEW.ID := SUBJECT_SEQ.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER CLASSROOM_TRG
BEFORE INSERT ON CLASSROOM
FOR EACH ROW
BEGIN
    :NEW.ID := CLASSROOM_SEQ.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER TIME_PERIOD_TRG
BEFORE INSERT ON TIME_PERIOD
FOR EACH ROW
BEGIN
    :NEW.ID := TIME_PERIOD_SEQ.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER WALLET_HISTORY_TRG
BEFORE INSERT ON WALLET_HISTORY
FOR EACH ROW
BEGIN
    :NEW.ID := WALLET_HISTORY_SEQ.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER RESERVATION_TRG
BEFORE INSERT ON RESERVATION
FOR EACH ROW
BEGIN
    :NEW.ID := RESERVATION_SEQ.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER POST_TRG
BEFORE INSERT ON POST
FOR EACH ROW
BEGIN
    :NEW.ID := POST_SEQ.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER COMMENTS_TRG
BEFORE INSERT ON COMMENTS
FOR EACH ROW
BEGIN
    :NEW.ID := COMMENTS_SEQ.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER PAYED_COURSE_TRG
BEFORE INSERT ON PAYED_COURSE
FOR EACH ROW
BEGIN
    :NEW.ID := PAYED_COURSE_SEQ.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER IMAGE_TRG
BEFORE INSERT ON IMAGE
FOR EACH ROW
BEGIN
    :NEW.ID := IMAGE_SEQ.NEXTVAL;
END;
/