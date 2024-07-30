package org.chulgang.hrd.course.dto;

import org.chulgang.hrd.course.domain.Course;

import java.util.ArrayList;
import java.util.List;

public class GetCoursesResponse {
    private List<GetCourseResponse> getCourseResponses;

    private GetCoursesResponse(List<GetCourseResponse> getCourseResponses) {
        this.getCourseResponses = getCourseResponses;
    }

    public List<GetCourseResponse> getCourseResponses() {
        return getCourseResponses;
    }

    public GetCourseResponse get(int idx) {
        return getCourseResponses.get(idx);
    }

    public static GetCoursesResponse from(List<Course> courses) {
        List<GetCourseResponse> getCourseResponses = new ArrayList<GetCourseResponse>();

        for (Course course : courses) {
            getCourseResponses.add(GetCourseResponse.from(course));
        }

        return new GetCoursesResponse(getCourseResponses);
    }
}
