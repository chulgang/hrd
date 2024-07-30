package org.chulgang.hrd.course.model.repository;

import org.chulgang.hrd.course.domain.Course;

import java.util.List;

public interface CourseRepository {
    List<Course> findAll(int size, int pageNumber);
}
