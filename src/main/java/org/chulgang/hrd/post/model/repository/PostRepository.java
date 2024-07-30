package org.chulgang.hrd.post.model.repository;

import org.chulgang.hrd.post.domain.Post;

import java.util.ArrayList;

interface PostRepository {
    ArrayList<Post> posts();
    void insertPost(Post post);

}
