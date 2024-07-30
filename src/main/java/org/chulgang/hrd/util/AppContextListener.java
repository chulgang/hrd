package org.chulgang.hrd.util;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import org.chulgang.hrd.course.model.service.CourseService;
import org.chulgang.hrd.course.model.service.CourseServiceImpl;

import static org.chulgang.hrd.course.util.RequestConstant.COURSE_SERVICE_ATTRIBUTE_NAME;

@WebListener
public class AppContextListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        CourseService courseService = CourseServiceImpl.getInstance();
        sce.getServletContext().setAttribute(COURSE_SERVICE_ATTRIBUTE_NAME, courseService);
    }
}