package org.chulgang.hrd.post.model.sql;

public class PostSQL {
    public final static String Posts = "select * from post";
    public final static String insertPost =  "insert into post(ID, WRITER_ID, SUBJECT, CONTENT, VIEW_COUNT, CREATED_AT, MODIFIED_AT) values(POST_SEQ.nextval, ?, ?, ?, ?, SYSDATE, SYSDATE)";
    public final static String deletePost =  "delete from post where ID = ?";
    //글쓴이 가져오는 쿼리 안씀 세션가능 public final static String getPostById =  "select full_name from post p join users u on p.writer_id = u.id where u.id = ?";
    public final static String selectPosts = "select subject,content from post where id= ?";

}
