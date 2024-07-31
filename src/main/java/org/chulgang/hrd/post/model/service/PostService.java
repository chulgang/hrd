package org.chulgang.hrd.post.model.service;

import org.chulgang.hrd.post.domain.Post;

import java.sql.SQLException;
import java.util.ArrayList;

public interface PostService {

    ArrayList<Post> postsS();

    ArrayList<Post> content_postsS(long writer_id);

    void insert_PostS(Post post);

    void incrementViewCountS(long postId);

    long getViewCountS(long postId);
    void delete_PostS(long postId);
    Post getSubjectAndContent(long postId);
}