package org.chulgang.hrd.post.model.sql;

public class PostSQL {
    public final static String Posts = "select * from post";
    public final static String insertPost =  "insert into post(ID, WRITER_ID, SUBJECT, CONTENT, VIEW_COUNT, CREATED_AT, MODIFIED_AT) values(POST_SEQ.nextval, ?, ?, ?, ?, SYSDATE, SYSDATE)";
}
