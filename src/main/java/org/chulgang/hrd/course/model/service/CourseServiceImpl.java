package org.chulgang.hrd.course.model.service;

import org.chulgang.hrd.course.domain.Course;
import org.chulgang.hrd.course.dto.CreateCourseRequest;
import org.chulgang.hrd.course.dto.GetCourseResponse;
import org.chulgang.hrd.course.dto.GetCoursesResponse;
import org.chulgang.hrd.course.model.repository.CourseRepository;
import org.chulgang.hrd.course.model.repository.CourseRepositoryImpl;

public class CourseServiceImpl implements CourseService {
    private static final CourseService INSTANCE = new CourseServiceImpl(CourseRepositoryImpl.getInstance());
    private final CourseRepository courseRepository;

    public CourseServiceImpl(CourseRepository courseRepository) {
        this.courseRepository = courseRepository;
    }

    public static CourseService getInstance() {
        return INSTANCE;
    }

    @Override
    public GetCoursesResponse getCourses(int size, int pageNumber) {
        int pageCount = courseRepository.computePageCount(size);
        return GetCoursesResponse.from(courseRepository.findAll(size, pageNumber), pageCount);
    }

    @Override
    public GetCourseResponse getCourse(Long id) {
        return GetCourseResponse.from(courseRepository.findById(id));
    }

    @Override
    public boolean create(CreateCourseRequest createCourseRequest) {
        return courseRepository.save(Course.from(createCourseRequest));
    }

    @Override
    public boolean checkDuplicateCourseName(String courseName) {
        return courseRepository.existsByName(courseName);
    }

    @Override
    public int getRemainedSeat(Long id) {
        return courseRepository.findRemainedSeatById(id);
    }

    @Override
    public void updateRemainedSeat(Long id, int newRemainedSeat) {
        courseRepository.updateRemainedSeatById(id, newRemainedSeat);
    }
}
