package org.chulgang.hrd.post.model.repository;

import org.chulgang.hrd.post.domain.Post;
import org.chulgang.hrd.post.model.sql.PostSQL;
import org.chulgang.hrd.util.DbConnection;

import java.sql.*;
import java.util.ArrayList;


public class PostRepositoryImpl implements PostRepository {

    public ArrayList<Post> posts() {
        ArrayList<Post> posts = new ArrayList<>();

        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        String sql = PostSQL.Posts;
        Post viewpost = null;

        try {
            con = DbConnection.getConnection();
            stmt = con.createStatement();
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                long id = rs.getInt(1);
                long writer_id = rs.getLong(2);
                System.out.println("writer_id: " + writer_id);
                String subject = rs.getString(3);
                String content = rs.getString(4);
                int view = rs.getInt(5);

                viewpost = new Post(id, writer_id, subject, content, view);
                posts.add(viewpost);
            }
            return posts;
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("ㅎㅇㅎㅇ");
            return null;
        }
    }

    public void insert_posts(Post post){
        Connection con = null;
        PreparedStatement pstmt = null;
        String sql = PostSQL.insertPost;

        try{
            con=DbConnection.getConnection();
            pstmt=con.prepareStatement(sql);

            System.out.println("getWriter_id"+ post.getWriter_id());
            System.out.println("getSubject"+ post.getSubject());
            System.out.println("getSubject"+post.getContent());
            System.out.println("getViewCount"+post.getView());

            pstmt.setLong(1, post.getWriter_id());
            pstmt.setString(2, post.getSubject());
            pstmt.setString(3, post.getContent());
            pstmt.setInt(4,post.getView());

            int i = pstmt.executeUpdate();
            System.out.println("Rows affected: " + i);
        } catch (SQLException e) {
            System.err.println("SQL Exception: " + e.getMessage());
            e.printStackTrace();
        }finally{
            try{
                pstmt.close();
                con.close();
            }catch(SQLException se) {
                System.out.println("insert_post"+se);
            }
        }
    }
    }


//
//
//
//    public static void select() {
//
//        Connection con = null;
//        Statement stmt = null;
//        ResultSet rs = null;
//        String sql = "select * from  dept";
//        int flag = -1;
//
//        try {
//            con = DbConnection.getConnection();
//            stmt = con.createStatement();
//
//            rs = stmt.executeQuery(sql);
//            while (rs.next()) {
//                int a = rs.getInt(1);
//                String b = rs.getString(2);
//                String c = rs.getString(3);
//                System.out.println(rs.getInt(1));
//            }
//            System.out.println("insert_users성공");
//
//        } catch (SQLException e) {
//            System.err.println(e + "Board write  insert SQLException");
//            e.printStackTrace();
//
//        }
//    }

