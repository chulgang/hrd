package org.chulgang.hrd.post.model.service;

import org.chulgang.hrd.post.domain.Post;
import org.chulgang.hrd.post.model.repository.PostRepositoryImpl;

import java.sql.SQLException;
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
        return postRepository.posts();
    }
    public ArrayList<Post> content_postsS(long writer_id) {
        return postRepository.content_posts(writer_id);
    }

    public void insert_PostS(Post post) {
        postRepository.insert_posts(post);
    }

    public void incrementViewCountS(long postId)  {
        try {
            postRepository.incrementViewCount(postId);
        } catch (SQLException e) {
            e.printStackTrace(); // Handle exception as appropriate
        }
    }

    public long getViewCountS(long postId) {
        try {
            return postRepository.getViewCount(postId);
        } catch (SQLException e) {
            e.printStackTrace(); // Handle exception as appropriate
            return 0; // Default if error occurs
        }
    }

    @Override
    public void delete_PostS(long postId) {
            postRepository.deletePost(postId);
    }
    public void update_PostS(Post post) {
        postRepository.update_posts(post);
    }
    @Override
    public Post getSubjectAndContent(long postId) {
         return  postRepository.getSubjectAndContent(postId);
        }

}
