package org.chulgang.hrd.users.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.chulgang.hrd.users.model.usersService.UsersService;
import org.chulgang.hrd.util.DbConnection;

import java.io.IOException;


@WebServlet("/elearn/users/signUp.do")
public class SignUpController extends HttpServlet {

    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        DbConnection.initialize();
        UsersService service = UsersService.getInstance();

        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String full_name = request.getParameter("full_name");
        String phone = request.getParameter("phone");
        String student = request.getParameter("student");
        String teacher = request.getParameter("teacher");

        //회원가입 진행 후 권한도 저장한다.
        int result = service.signUp(email,username,password,full_name,phone);

        if(result == 1){
            if(student !=null && student != ""){
                service.insertUserRole(email,password,student);
            }
            if(teacher !=null && teacher != ""){
                service.insertUserRole(email,password,teacher);
            }
        }


        // PrintWriter pw = response.getWriter();
        //pw.println("<script>location.href='../index.jsp';</script>");
        response.sendRedirect("../index.jsp");
        System.out.println("result: " + email);
        System.out.println("result: " + username);
        System.out.println("result: " + password);
        System.out.println("result: " + full_name);
        System.out.println("result: " + phone);
        System.out.println("student: " + student);
        System.out.println("teacher: " + teacher);


    }
}
