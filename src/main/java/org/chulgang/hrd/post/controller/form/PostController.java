package org.chulgang.hrd.post.controller.form;

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

import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/elearn/post.do")

public class PostController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

                HttpSession session = request.getSession();
                UsersLoginResponse user = (UsersLoginResponse) session.getAttribute("dto");

                PostService service = new PostServiceImpl();
                ArrayList<Post> postlist;
                String full_name= request.getParameter("full_name");

                request.setAttribute("full_name", full_name);

                String a = (String) session.getAttribute("full_name");
                System.out.println(a);

                System.out.println("PostController@@@@@@@@@@@@@@@@@@:"+a);

                if(user==null || user.getFull_name() ==null || session.getAttribute("full_name") == null || full_name==null ) {
                    System.out.println("user=null");
                    String view = "post.jsp";
                    postlist = service.postsS(full_name);
                    request.setAttribute("postlist", postlist);
                    RequestDispatcher rd = request.getRequestDispatcher(view);
                    rd.forward(request, response);
                } else if(session.getAttribute("post") == null || session.getAttribute("full_name") == null) {
                    System.out.println("else if");
                    String view = "post.jsp";
                    System.out.println("session.getAttribute(post) == null");
                    postlist = service.postsS(full_name);
                    request.setAttribute("postlist", postlist);
                    session.setAttribute("full_name", full_name);
                    System.out.println("user_id: "+user.getUsername());
                    request.setAttribute("user_Id", user.getId());
                    RequestDispatcher rd = request.getRequestDispatcher(view);
                    rd.forward(request, response);
                } else {
                    System.out.println("else");
                    Post post = (Post) session.getAttribute("post");
                    full_name = (String) session.getAttribute("full_name");
                    postlist = service.postsS(full_name);
                    request.setAttribute("postlist", postlist);

                    request.setAttribute("user_Id", user.getId());
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
