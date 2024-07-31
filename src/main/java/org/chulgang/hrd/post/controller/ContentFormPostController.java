package org.chulgang.hrd.post.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.chulgang.hrd.users.dto.UsersLoginResponse;

import java.io.IOException;

@WebServlet("/elearn/post_contentForm.do")
public class ContentFormPostController extends HttpServlet {
    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String post_id = request.getParameter("post_id");
        String post_content = request.getParameter("post_content");
        System.out.println("content control"+post_id);
        System.out.println("content control"+post_content);

        request.setAttribute("post_id", post_id);
        request.setAttribute("post_content", post_content);

        String view = "postContent.jsp";
        RequestDispatcher rd = request.getRequestDispatcher(view);
        rd.forward(request, response);
    }
}
