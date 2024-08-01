insert into users values(USERS_SEQ.nextval,'email1','username1','password1','full1','phone1',sysdate,sysdate);
insert into users values(USERS_SEQ.nextval,'email2','username2','password2','full2','phone2',sysdate,sysdate);
insert into users values(USERS_SEQ.nextval,'email3','username3','password3','full3','phone3',sysdate,sysdate);
insert into users values(USERS_SEQ.nextval,'email4','username4','password4','full4','phone4',sysdate,sysdate);
insert into users values(USERS_SEQ.nextval,'email5','username5','password5','full5','phone5',sysdate,sysdate);

insert into user_role values(USER_ROLE_SEQ.nextval,1,'STUDENT');
insert into user_role values(USER_ROLE_SEQ.nextval,2,'STUDENT');
insert into user_role values(USER_ROLE_SEQ.nextval,3,'STUDENT');
insert into user_role values(USER_ROLE_SEQ.nextval,4,'STUDENT');
insert into user_role values(USER_ROLE_SEQ.nextval,5,'STUDENT');

insert into CLASSROOM(ID, NAME, SEAT_COUNT, CREATED_AT, MODIFIED_AT) values(1, '1강의실', 1, SYSDATE, SYSDATE);
insert into CLASSROOM(ID, NAME, SEAT_COUNT, CREATED_AT, MODIFIED_AT) values(2, '2강의실', 2, SYSDATE, SYSDATE);
insert into CLASSROOM(ID, NAME, SEAT_COUNT, CREATED_AT, MODIFIED_AT) values(3, '3강의실', 3, SYSDATE, SYSDATE);

insert into IMAGE values(IMAGE_SEQ.nextval,1,'target_type1','name1',null,sysdate,sysdate);
insert into IMAGE values(IMAGE_SEQ.nextval,2,'target_type2','name2',null,sysdate,sysdate);
insert into IMAGE values(IMAGE_SEQ.nextval,3,'target_type3','name3',null,sysdate,sysdate);
insert into IMAGE values(IMAGE_SEQ.nextval,4,'target_type4','name4',null,sysdate,sysdate);
insert into IMAGE values(IMAGE_SEQ.nextval,5,'target_type5','name5',null,sysdate,sysdate);

insert into post values(POST_SEQ.nextval,1,'subject1','content1',1,'full1',sysdate,sysdate);
insert into post values(POST_SEQ.nextval,2,'subject2','content2',2,'full2',sysdate,sysdate);
insert into post values(POST_SEQ.nextval,3,'subject3','content3',3,'full3',sysdate,sysdate);
insert into post values(POST_SEQ.nextval,4,'subject4','content4',4,'full4',sysdate,sysdate);
insert into post values(POST_SEQ.nextval,5,'subject5','content5',5,'full5',sysdate,sysdate);

insert into SUBJECT(ID, NAME, CREATED_AT, MODIFIED_AT) values(1, '수학', SYSDATE, SYSDATE);
insert into SUBJECT(ID, NAME, CREATED_AT, MODIFIED_AT) values(2, '영어', SYSDATE, SYSDATE);
insert into SUBJECT(ID, NAME, CREATED_AT, MODIFIED_AT) values(3, '국어', SYSDATE, SYSDATE);

insert into TIME_PERIOD(ID, CLASSROOM_ID, PERIOD, START_DATE, LAST_DATE, IS_USED, CREATED_AT, MODIFIED_AT) values(1, 1, 'NINE', SYSDATE, SYSDATE, 0, SYSDATE, SYSDATE);
insert into TIME_PERIOD(ID, CLASSROOM_ID, PERIOD, START_DATE, LAST_DATE, IS_USED, CREATED_AT, MODIFIED_AT) values(2, 1, 'ELEVEN', SYSDATE, SYSDATE, 0, SYSDATE, SYSDATE);
insert into TIME_PERIOD(ID, CLASSROOM_ID, PERIOD, START_DATE, LAST_DATE, IS_USED, CREATED_AT, MODIFIED_AT) values(3, 2, 'NINE', SYSDATE, SYSDATE, 0, SYSDATE, SYSDATE);
insert into TIME_PERIOD(ID, CLASSROOM_ID, PERIOD, START_DATE, LAST_DATE, IS_USED, CREATED_AT, MODIFIED_AT) values(4, 1, 'FOURTEEN', SYSDATE, SYSDATE, 0, SYSDATE, SYSDATE);
insert into TIME_PERIOD(ID, CLASSROOM_ID, PERIOD, START_DATE, LAST_DATE, IS_USED, CREATED_AT, MODIFIED_AT) values(5, 3, 'SIXTEEN', SYSDATE, SYSDATE, 0, SYSDATE, SYSDATE);
insert into TIME_PERIOD(ID, CLASSROOM_ID, PERIOD, START_DATE, LAST_DATE, IS_USED, CREATED_AT, MODIFIED_AT) values(6, 1, 'NINE', SYSDATE, SYSDATE, 0, SYSDATE, SYSDATE);

insert into COMMENTS values(COMMENTS_SEQ.nextval,1,1,'content1',sysdate,sysdate);
insert into COMMENTS values(COMMENTS_SEQ.nextval,2,2,'content2',sysdate,sysdate);
insert into COMMENTS values(COMMENTS_SEQ.nextval,3,3,'content3',sysdate,sysdate);
insert into COMMENTS values(COMMENTS_SEQ.nextval,4,4,'content4',sysdate,sysdate);
insert into COMMENTS values(COMMENTS_SEQ.nextval,5,5,'content5',sysdate,sysdate);

insert into COURSE values(COURSE_SEQ.nextval , 1, 1, 1, 'abc', 'abcd', 1, SYSDATE, SYSDATE, 4.3, 1, SYSDATE, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, 1, 1, 1, 'abcabc', 'abcdde', 1, SYSDATE, SYSDATE, 5.0, 1, SYSDATE, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, 1, 1, 1, 'abcabcabc', 'abcddeasdf', 1, SYSDATE, SYSDATE, 0.0, 100000, SYSDATE, SYSDATE);
insert into COURSE values(COURSE_SEQ.nextval, 1, 1, 1, 'abcabcabcabc', 'abcddesadf', 1, SYSDATE, SYSDATE, 1.0, 10000, SYSDATE, SYSDATE);

insert into WALLET_HISTORY values(WALLET_HISTORY_SEQ.nextval,1,0,0,0,0,sysdate);
insert into WALLET_HISTORY values(WALLET_HISTORY_SEQ.nextval,2,0,0,0,0,sysdate);
insert into WALLET_HISTORY values(WALLET_HISTORY_SEQ.nextval,3,0,0,0,0,sysdate);
insert into WALLET_HISTORY values(WALLET_HISTORY_SEQ.nextval,4,0,0,0,0,sysdate);
insert into WALLET_HISTORY values(WALLET_HISTORY_SEQ.nextval,5,0,0,0,0,sysdate);

insert into RESERVATION values(RESERVATION_SEQ.nextval,1,sysdate);
insert into RESERVATION values(RESERVATION_SEQ.nextval,2,sysdate);
insert into RESERVATION values(RESERVATION_SEQ.nextval,3,sysdate);
insert into RESERVATION values(RESERVATION_SEQ.nextval,4,sysdate);
insert into RESERVATION values(RESERVATION_SEQ.nextval,5,sysdate);

insert into PAYED_COURSE values(PAYED_COURSE_SEQ.nextval,1,1,sysdate,sysdate,1,1,sysdate,1);
insert into PAYED_COURSE values(PAYED_COURSE_SEQ.nextval,2,2,sysdate,sysdate,2,2,sysdate,2);
insert into PAYED_COURSE values(PAYED_COURSE_SEQ.nextval,3,3,sysdate,sysdate,3,3,sysdate,3);
insert into PAYED_COURSE values(PAYED_COURSE_SEQ.nextval,4,4,sysdate,sysdate,4,4,sysdate,4);

insert into review values(REVIEW_SEQ.nextval,1,1,1,'content1',sysdate,sysdate);
insert into review values(REVIEW_SEQ.nextval,2,2,2,'content2',sysdate,sysdate);
insert into review values(REVIEW_SEQ.nextval,3,3,3,'content3',sysdate,sysdate);
insert into review values(REVIEW_SEQ.nextval,4,4,4,'content4',sysdate,sysdate);
insert into review values(REVIEW_SEQ.nextval,1,1,1,'content5',sysdate,sysdate);

insert into reserved_course values(COURSE_SEQ.nextval,1,1,sysdate,1);
insert into reserved_course values(COURSE_SEQ.nextval,2,2,sysdate,1);
insert into reserved_course values(COURSE_SEQ.nextval,3,3,sysdate,1);
insert into reserved_course values(COURSE_SEQ.nextval,4,4,sysdate,1);
