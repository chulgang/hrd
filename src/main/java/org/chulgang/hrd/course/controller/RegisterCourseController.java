package org.chulgang.hrd.course.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.chulgang.hrd.aop.LoggingAspect;
import org.chulgang.hrd.course.dto.CreateCourseRequest;
import org.chulgang.hrd.course.dto.GetSubjectsResponse;
import org.chulgang.hrd.course.model.service.CourseService;
import org.chulgang.hrd.course.model.service.SubjectService;

import java.io.IOException;
import java.io.PrintWriter;

import static org.chulgang.hrd.course.util.RequestConstant.*;


@WebServlet(urlPatterns = {REGISTER_COURSE_FIRST_REQUEST_URL, REGISTER_COURSE_SECOND_REQUEST_URL, VALIDATION_URL})
public class RegisterCourseController extends HttpServlet {
    private CourseService courseService;
    private SubjectService subjectService;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);

        courseService = LoggingAspect.createProxy(CourseService.class,
                (CourseService) config.getServletContext().getAttribute(COURSE_SERVICE_ATTRIBUTE_NAME));

        subjectService = LoggingAspect.createProxy(SubjectService.class,
                (SubjectService) config.getServletContext().getAttribute(SUBJECT_SERVICE_ATTRIBUTE_NAME));
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getRequestURI().contains(String.format("%s/", COURSE_DOMAIN_NAME))) {
            response.sendRedirect(REGISTER_COURSE_SECOND_REQUEST_URL);
            return;
        }

        GetSubjectsResponse getSubjectsResponse = subjectService.getSubjects();

        request.setAttribute(GET_SUBJECTS_ATTRIBUTE_NAME, getSubjectsResponse);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher(COURSE_REGISTER_VIEW);
        requestDispatcher.forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO: 강의실 추가
        // TODO: 선택 시간대 추가
        // TODO: 회원 추가
        // TODO: 이미지 추가

        if (request.getRequestURI().equals(VALIDATION_URL)) {
            validateDuplicateCourseName(request, response);
            return;
        }

        courseService.create(CreateCourseRequest.from(request));
        response.sendRedirect(GET_COURSES_FIRST_REQUEST_URL);
    }

    private void validateDuplicateCourseName(HttpServletRequest request, HttpServletResponse response) {
        boolean isDuplicateName
                = courseService.checkDuplicateCourseName(request.getParameter(COURSE_NAME_PARAMETER_NAME));
        StringBuilder duplicateJson = new StringBuilder("{\"isDuplicateName\": \"");
        duplicateJson.append(isDuplicateName);
        duplicateJson.append("\"}");

        try {
            response.setContentType(JSON_CONTENT_TYPE);
            PrintWriter pw = response.getWriter();
            pw.print(duplicateJson.toString());
        } catch (IOException ie) {
        }
    }
}
