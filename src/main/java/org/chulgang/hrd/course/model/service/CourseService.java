package org.chulgang.hrd.course.model.service;

import org.chulgang.hrd.course.dto.CreateCourseRequest;
import org.chulgang.hrd.course.dto.GetCourseResponse;
import org.chulgang.hrd.course.dto.GetCoursesResponse;

public interface CourseService {
    GetCoursesResponse getCourses(int size, int pageNumber);

    GetCourseResponse getCourse(Long id);

    boolean create(CreateCourseRequest createCourseRequest);

    boolean checkDuplicateCourseName(String courseName);

    int getRemainedSeat(Long id);

    void updateRemainedSeat(Long id, int newRemainedSeat);
}
