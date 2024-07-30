package org.chulgang.hrd.users.controller;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.chulgang.hrd.users.dto.UsersLoginResponse;

import java.io.IOException;

@WebServlet("/elearn/users/myPageForm.do")
public class MyPageFormController extends HttpServlet{

    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session = request.getSession();
        UsersLoginResponse dto = (UsersLoginResponse)session.getAttribute("dto");
        System.out.println("dto::::" + dto.getEmail());
        session.setAttribute("dto",dto);
        //response.sendRedirect("../myPage.jsp");
        RequestDispatcher rd = request.getRequestDispatcher("../myPage.jsp");
        rd.forward(request, response);

    }
}
