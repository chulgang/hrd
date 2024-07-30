package org.chulgang.hrd.course.controller;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.chulgang.hrd.aop.LoggingAspect;
import org.chulgang.hrd.course.dto.CreateCourseRequest;
import org.chulgang.hrd.course.model.service.CourseService;

import java.io.IOException;

import static org.chulgang.hrd.course.util.RequestConstant.*;


@WebServlet(REGISTER_COURSE_REQUEST_URL)
public class RegisterCourseController extends HttpServlet {
    private CourseService courseService;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);

        courseService = LoggingAspect.createProxy(CourseService.class,
                (CourseService) config.getServletContext().getAttribute(COURSE_SERVICE_ATTRIBUTE_NAME));
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO: 강의실 추가
        // TODO: 선택 시간대 추가
        // TODO: 회원 추가
        // TODO: 이미지 추가

        courseService.create(CreateCourseRequest.from(request));
        response.sendRedirect(GET_COURSES_FIRST_REQUEST_URL);
    }
}
