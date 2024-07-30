package org.chulgang.hrd.post.model.service;

import org.chulgang.hrd.post.domain.Post;
import org.chulgang.hrd.post.model.repository.PostRepositoryImpl;

import java.util.ArrayList;

public class PostServiceImpl implements PostService {
    private PostRepositoryImpl postRepository;

    private static final PostServiceImpl instance = new PostServiceImpl();

    public static PostServiceImpl getInstance() {
        return instance;
    }

    public PostServiceImpl() {
        postRepository = new PostRepositoryImpl();
    }

    public ArrayList<Post> postsS() {
        System.out.println("service");
        return postRepository.posts();
    }


}
