package org.chulgang.hrd.course.model.service;

import org.chulgang.hrd.course.dto.GetCourseResponse;
import org.chulgang.hrd.course.dto.GetCoursesResponse;
import org.chulgang.hrd.course.model.repository.CourseRepository;
import org.chulgang.hrd.course.model.repository.CourseRepositoryImpl;
import org.chulgang.hrd.util.DbConnection;

public class CourseServiceImpl implements CourseService {
    private static final CourseServiceImpl INSTANCE = new CourseServiceImpl(CourseRepositoryImpl.getInstance());
    private final CourseRepository courseRepository;

    public CourseServiceImpl(CourseRepository courseRepository) {
        this.courseRepository = courseRepository;
    }

    public static CourseServiceImpl getInstance() {
        return INSTANCE;
    }

    @Override
    public GetCoursesResponse getCourses(int size, int pageNumber) {
        DbConnection.initialize();
        return GetCoursesResponse.from(courseRepository.findAll(size, pageNumber));
    }

    @Override
    public GetCourseResponse getCourse(Long id) {
        DbConnection.initialize();
        return GetCourseResponse.from(courseRepository.findById(id));
    }
}
