package org.chulgang.hrd.post.model.service;

import org.chulgang.hrd.post.domain.Post;

import java.util.ArrayList;

public interface PostService {

    ArrayList<Post> postsS();

    void insert_PostS(Post post);
}