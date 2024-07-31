package org.chulgang.hrd.post.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.chulgang.hrd.post.domain.Post;
import org.chulgang.hrd.post.model.service.PostService;
import org.chulgang.hrd.post.model.service.PostServiceImpl;
import org.chulgang.hrd.users.dto.UsersLoginResponse;
import org.chulgang.hrd.util.DbConnection;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/elearn/post.do")

public class PostController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                DbConnection.initialize();
                HttpSession session = request.getSession();
                UsersLoginResponse user = (UsersLoginResponse) session.getAttribute("dto");

                PostService service = new PostServiceImpl();
                ArrayList<Post> postlist = service.postsS();
                ArrayList<Post> content_postlist = service.content_postsS(user.getId()); //로그인한 사람의 내용만 보이도록

                request.setAttribute("user_Id",user.getId());
                request.setAttribute("postlist", postlist);
                request.setAttribute("content_postlist", content_postlist);

                if(session.getAttribute("post") == null) {
                    String view = "post.jsp";

                    RequestDispatcher rd = request.getRequestDispatcher(view);
                    rd.forward(request, response);
                } else {
                    Post post = (Post) session.getAttribute("post");

                    System.out.println("Post controller: "+ post.getId());
                    System.out.println("Post_Writer_id controller: "+ post.getWriter_id());
                    System.out.println("Post_subject controller: "+ post.getSubject());
                    System.out.println("Post_Content controller: "+ post.getContent());

                    String view = "post.jsp";

                    RequestDispatcher rd = request.getRequestDispatcher(view);
                    rd.forward(request, response);
                }


    }
}
