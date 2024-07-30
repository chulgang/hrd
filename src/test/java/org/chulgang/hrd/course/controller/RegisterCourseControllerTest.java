package org.chulgang.hrd.course.controller;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.chulgang.hrd.course.dto.CreateCourseRequest;
import org.chulgang.hrd.course.model.service.CourseService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.mockito.ArgumentCaptor;

import java.io.IOException;

import static org.assertj.core.api.Assertions.assertThat;
import static org.chulgang.hrd.course.model.testutil.CourseTestConstant.*;
import static org.chulgang.hrd.course.util.RequestConstant.COURSE_SERVICE_ATTRIBUTE_NAME;
import static org.mockito.Mockito.*;

public class RegisterCourseControllerTest {
    private CourseService courseService;
    private RegisterCourseController registerCourseController;
    private HttpServletRequest request;
    private HttpServletResponse response;
    private ServletConfig servletConfig;
    private ServletContext servletContext;

    @BeforeEach
    void setUp() throws ServletException {
        courseService = mock(CourseService.class);
        registerCourseController = new RegisterCourseController();
        registerCourseController.init();
        request = mock(HttpServletRequest.class);
        response = mock(HttpServletResponse.class);
        servletConfig = mock(ServletConfig.class);
        servletContext = mock(ServletContext.class);

        when(servletConfig.getServletContext()).thenReturn(servletContext);
        when(servletContext.getAttribute(COURSE_SERVICE_ATTRIBUTE_NAME)).thenReturn(courseService);

        registerCourseController.init(servletConfig);
    }

    @DisplayName("강좌 등록 요청을 처리할 수 있다.")
    @Test
    void doPost() throws ServletException, IOException {
        // Given
        when(request.getParameter("subjectId")).thenReturn(String.valueOf(SUBJECT_ID1));
        when(request.getParameter("teacherId")).thenReturn(String.valueOf(TEACHER_ID1));
        when(request.getParameter("timePeriodId")).thenReturn(String.valueOf(TIME_PERIOD_ID1));
        when(request.getParameter("name")).thenReturn(NAME1);
        when(request.getParameter("description")).thenReturn(DESCRIPTION1);
        when(request.getParameter("price")).thenReturn(String.valueOf(PRICE1));
        when(request.getParameter("startDate")).thenReturn(START_DATE1.toString());
        when(request.getParameter("lastDate")).thenReturn(LAST_DATE1.toString());

        // When
        registerCourseController.doPost(request, response);

        // Then
        ArgumentCaptor<CreateCourseRequest> captor = ArgumentCaptor.forClass(CreateCourseRequest.class);
        verify(courseService, times(1)).create(captor.capture());
        CreateCourseRequest capturedRequest = captor.getValue();

        assertThat(capturedRequest).isNotNull();
        assertThat(capturedRequest.getSubjectId()).isEqualTo(SUBJECT_ID1);
        assertThat(capturedRequest.getTeacherId()).isEqualTo(TEACHER_ID1);
        assertThat(capturedRequest.getTimePeriodId()).isEqualTo(TIME_PERIOD_ID1);
        assertThat(capturedRequest.getName()).isEqualTo(NAME1);
        assertThat(capturedRequest.getDescription()).isEqualTo(DESCRIPTION1);
        assertThat(capturedRequest.getPrice()).isEqualTo(PRICE1);
        assertThat(capturedRequest.getStartDate()).isEqualTo(START_DATE1);
        assertThat(capturedRequest.getLastDate()).isEqualTo(LAST_DATE1);

        verify(response).sendRedirect("/elearn/course/courses.do");
    }
}
