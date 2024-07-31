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

@WebServlet("/elearn/post_updateForm.do")
public class UpdateFormPostController extends HttpServlet {
    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DbConnection.initialize();

        String view = "postUpdate.jsp";
        String strPostId = request.getParameter("post_id");
        System.out.println("strPostiD:::: " + strPostId);
        long post_id = Long.parseLong(strPostId);
        HttpSession session =  request.getSession();
        UsersLoginResponse user = (UsersLoginResponse) session.getAttribute("dto");
        PostService service = new PostServiceImpl();
        Post post = service.getSubjectAndContent(post_id);


        request.setAttribute("post_id",post_id);
        request.setAttribute("post",post);
        request.setAttribute("writer",user.getFull_name());

        RequestDispatcher rd = request.getRequestDispatcher(view);
        rd.forward(request, response);
    }
}
