package org.chulgang.hrd.course.model.service;

import org.chulgang.hrd.course.domain.Course;
import org.chulgang.hrd.course.dto.CreateCourseRequest;
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
        int pageCount = courseRepository.computePageCount(size);
        return GetCoursesResponse.from(courseRepository.findAll(size, pageNumber), pageCount);
    }

    @Override
    public GetCourseResponse getCourse(Long id) {
        DbConnection.initialize();
        return GetCourseResponse.from(courseRepository.findById(id));
    }

    @Override
    public void create(CreateCourseRequest createCourseRequest) {
        DbConnection.initialize();
        courseRepository.save(Course.from(createCourseRequest));
    }

    @Override
    public boolean checkDuplicateCourseName(String courseName) {
        DbConnection.initialize();
        return courseRepository.existsByName(courseName);
    }
}
