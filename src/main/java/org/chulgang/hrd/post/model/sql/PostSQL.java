package org.chulgang.hrd.post.model.sql;

public class PostSQL {
    public final static String viewPosts = "select * from post where full_name = ?";
    public final static String insertPost =  "insert into post(ID, WRITER_ID, SUBJECT, CONTENT, VIEW_COUNT, FULL_NAME, CREATED_AT, MODIFIED_AT) values(POST_SEQ.nextval, ?, ?, ?, ?, ?, SYSDATE, SYSDATE)";
    public final static String deletePost =  "delete from post where ID = ?";
    //글쓴이 가져오는 쿼리 안씀 세션가능 public final static String getPostById =  "select full_name from post p join users u on p.writer_id = u.id where u.id = ?";
    public final static String selectPosts = "select subject,content from post where id= ? order by ID";
    public final static String updatePost = "Update post set subject = ?, content =? Where id=?";
    public final static String viewPostList = "select DISTINCT u.ID, u.full_name from post p join users u on p.full_name = u.full_name join user_role r on r.USER_ID = u.id where r.role = 'teacher' order by u.Id";

}
