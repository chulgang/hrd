package org.chulgang.hrd.course.model.service;

import org.chulgang.hrd.course.dto.GetCoursesResponse;

public interface CourseService {
    GetCoursesResponse getCourses(int size, int pageNumber);
}
