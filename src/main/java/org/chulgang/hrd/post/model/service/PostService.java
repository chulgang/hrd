package org.chulgang.hrd.post.model.service;

import org.chulgang.hrd.post.domain.Post;

import java.sql.SQLException;
import java.util.ArrayList;

public interface PostService {

    ArrayList<Post> postsS(String full_name);

    ArrayList<Post> list_postsS();

    void insert_PostS(Post post);
//
//    void incrementViewCountS(long postId);
//    long getViewCountS(long postId);

    void delete_PostS(long postId);
    void update_PostS(Post post);

    Post getSubjectAndContent(long postId);
}