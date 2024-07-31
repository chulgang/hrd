package org.chulgang.hrd.post.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.chulgang.hrd.post.domain.Post;
import org.chulgang.hrd.users.dto.UsersLoginResponse;

import java.io.IOException;
import java.time.LocalDateTime;

@WebServlet("/elearn/post_contentForm.do")
public class ContentFormPostController extends HttpServlet {
    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


        HttpSession session = request.getSession();
        UsersLoginResponse user = (UsersLoginResponse) session.getAttribute("dto");

        request.setAttribute("user_Id",user.getId());

        long post_id = Long.parseLong(request.getParameter("post_id"));
        long post_writer_id = Long.parseLong(request.getParameter("post_writer_id"));
        String post_content = request.getParameter("post_content");
        String post_subject = request.getParameter("post_subject");

        Post post = new Post(post_id, post_writer_id, post_subject, post_content,
        0, null, null);


        session.setAttribute("post", post);
        System.out.println("ContentForm user id" +user.getId());
        System.out.println("ContentForm post id" +post.getWriter_id());

        String view = "postContent.jsp";
        RequestDispatcher rd = request.getRequestDispatcher(view);
        rd.forward(request, response);
    }
}
