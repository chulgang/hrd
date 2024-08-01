package org.chulgang.hrd.course.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.chulgang.hrd.classroom.model.service.TimePeriodService;
import org.chulgang.hrd.course.dto.CreateCourseRequest;
import org.chulgang.hrd.course.model.service.CourseService;
import org.chulgang.hrd.users.dto.UsersLoginResponse;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.mockito.ArgumentCaptor;

import java.io.IOException;
import java.io.PrintWriter;

import static org.assertj.core.api.Assertions.assertThat;
import static org.chulgang.hrd.course.model.testutil.CourseTestConstant.*;
import static org.chulgang.hrd.course.util.RequestConstant.*;
import static org.mockito.Mockito.*;

public class RegisterCourseControllerTest {
    private CourseService courseService;
    private TimePeriodService timePeriodService;
    private RegisterCourseController registerCourseController;
    private HttpServletRequest request;
    private HttpServletResponse response;
    private HttpSession session;
    private ServletConfig servletConfig;
    private ServletContext servletContext;

    @BeforeEach
    void setUp() throws ServletException {
        courseService = mock(CourseService.class);
        timePeriodService = mock(TimePeriodService.class);
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
        // given
        when(request.getRequestURI()).thenReturn(REGISTER_COURSE_FIRST_REQUEST_URL);
        when(request.getParameter("subjectId")).thenReturn(String.valueOf(SUBJECT_ID1));
        when(request.getParameter("teacherId")).thenReturn(String.valueOf(TEACHER_ID1));
        when(request.getParameter("time-period")).thenReturn(String.valueOf(TIME_PERIOD_ID1));
        when(request.getParameter("courseName")).thenReturn(NAME1);
        when(request.getParameter("course-description")).thenReturn(DESCRIPTION1);
        when(request.getParameter("price")).thenReturn(String.valueOf(PRICE1));
        when(request.getParameter("start-date")).thenReturn(START_DATE1.toString());
        when(request.getParameter("last-date")).thenReturn(LAST_DATE1.toString());
        when(request.getParameter("seatCount")).thenReturn(String.valueOf(REMAINED_SEAT1));
        when(request.getSession()).thenReturn(session);
        when(session.getAttribute("dto")).thenReturn(UsersLoginResponse.class);

        RequestDispatcher mockDispatcher = mock(RequestDispatcher.class);
        when(request.getRequestDispatcher(COURSE_REGISTRATION_CONFIRM_VIEW)).thenReturn(mockDispatcher);

        // when
        registerCourseController.doPost(request, response);

        // then
        ArgumentCaptor<CreateCourseRequest> captor = ArgumentCaptor.forClass(CreateCourseRequest.class);
        verify(courseService, times(1)).create(captor.capture(), timePeriodService);
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

        verify(request, times(1)).getRequestDispatcher(COURSE_REGISTRATION_CONFIRM_VIEW);
        verify(mockDispatcher, times(1)).forward(request, response);
    }

    @DisplayName("강좌명 중복 여부를 검증하고, 중복되는 경우 true를 반환할 수 있다.")
    @Test
    void doPostToValidateDuplicateCourseNameWhenTrue() throws IOException, ServletException {
        // given
        when(request.getRequestURI()).thenReturn(VALIDATION_URL);
        when(request.getParameter(COURSE_NAME_PARAMETER_NAME)).thenReturn(NAME1);
        when(courseService.checkDuplicateCourseName(NAME1)).thenReturn(true);

        PrintWriter writer = mock(PrintWriter.class);
        when(response.getWriter()).thenReturn(writer);

        // when
        registerCourseController.doPost(request, response);

        // then
        verify(response).setContentType(JSON_CONTENT_TYPE);
        verify(response.getWriter()).print("{\"isDuplicateName\": \"true\"}");
    }

    @DisplayName("강좌명 중복 여부를 검증하고, 중복되지 않는 경우 false를 반환할 수 있다.")
    @Test
    void doPostToValidateDuplicateCourseNameWhenFalse() throws IOException, ServletException {
        // given
        when(request.getRequestURI()).thenReturn(VALIDATION_URL);
        when(request.getParameter(COURSE_NAME_PARAMETER_NAME)).thenReturn(NAME1);
        when(courseService.checkDuplicateCourseName(NAME1)).thenReturn(false);

        PrintWriter writer = mock(PrintWriter.class);
        when(response.getWriter()).thenReturn(writer);

        // when
        registerCourseController.doPost(request, response);

        // then
        verify(response).setContentType(JSON_CONTENT_TYPE);
        verify(response.getWriter()).print("{\"isDuplicateName\": \"false\"}");
    }
}
