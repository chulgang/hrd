package org.chulgang.hrd.post.model.repository;

import org.chulgang.hrd.post.domain.Post;
import org.chulgang.hrd.post.model.sql.PostSQL;
import org.chulgang.hrd.util.DbConnection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;


public class PostRepositoryImpl implements PostRepository {

    public ArrayList<Post> posts() {
        ArrayList<Post> posts = new ArrayList<>();
        DbConnection.getConnection();

        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        String sql = PostSQL.Posts;
        Post viewpost = null;

        try {
            con = DbConnection.getConnection();
            stmt = con.createStatement();
            rs = stmt.executeQuery(sql);
            System.out.println("하이");
            
            while (rs.next()) {
                System.out.println("gdgdd");
                int writer_id = rs.getInt(2);
                System.out.println("writer_id: " + writer_id);
                String subject = rs.getString(3);
                String content = rs.getString(4);
                int view = rs.getInt(5);

                viewpost = new Post(writer_id, subject, content, view);
                posts.add(viewpost);
            }
            return posts;
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("ㅎㅇㅎㅇ");
            return null;
        }
    }

    @Override
    public void insertPost(Post post) {
        DbConnection.getConnection();

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
}
