package org.chulgang.hrd.post.model.repository;

import org.chulgang.hrd.post.domain.Post;

import java.util.ArrayList;

interface PostRepository {
    ArrayList<Post> posts(String full_name);
    void deletePost(long postId);
    Post getSubjectAndContent(long postId);
    void update_posts(Post post);
}
