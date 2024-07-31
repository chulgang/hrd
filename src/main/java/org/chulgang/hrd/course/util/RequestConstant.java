package org.chulgang.hrd.course.util;

public class RequestConstant {
    public static final String COURSE_DOMAIN_NAME = "course";
    public static final String COURSE_SERVICE_ATTRIBUTE_NAME = "courseService";
    public static final String SUBJECT_SERVICE_ATTRIBUTE_NAME = "subjectService";
    public static final String RESERVATION_SERVICE_ATTRIBUTE_NAME = "reservationService";
    public static final String PAYMENT_SERVICE_ATTRIBUTE_NAME = "paymentService";

    public static final String GET_SUBJECTS_ATTRIBUTE_NAME = "getSubjectsResponse";

    public static final String GET_COURSES_FIRST_REQUEST_URL = "/elearn/course/courses.do";
    public static final String GET_COURSES_SECOND_REQUEST_URL = "/elearn/courses.do";
    public static final String COURSES_ATTRIBUTE_NAME = "courses";
    public static final String SEARCH_WORD_PARAMETER_NAME = "searchWord";
    public static final String SIZE_PARAMETER_NAME = "size";
    public static final String PAGE_NUMBER_PARAMETER_NAME = "pageNumber";
    public static final String COURSE_NAME_PARAMETER_NAME = "courseName";

    public static final String COURSES_VIEW = "courses-grid.jsp";
    public static final String COURSE_REGISTER_VIEW = "course-registration-form.jsp";

    public static final String GET_COURSE_FIRST_REQUEST_URL = "/elearn/course/course-details.do";
    public static final String GET_COURSE_SECOND_REQUEST_URL = "/elearn/course-details.do";
    public static final String ID_PARAMETER_NAME = "id";
    public static final String COURSE_DETAIL_VIEW = "course-details.jsp";

    public static final String REGISTER_COURSE_FIRST_REQUEST_URL = "/elearn/course/registration.do";
    public static final String REGISTER_COURSE_SECOND_REQUEST_URL = "/elearn/registration.do";
    public static final String VALIDATION_URL = "/elearn/course/validation.do";
    public static final String JSON_CONTENT_TYPE = "application/json;charset=utf-8";
}
