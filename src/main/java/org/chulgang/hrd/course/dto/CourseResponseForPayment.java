package org.chulgang.hrd.course.dto;

import org.chulgang.hrd.classroom.domain.Period;
import org.chulgang.hrd.classroom.dto.GetTimePeriodResponse;

public class CourseResponseForPayment {
    private String subjectName;
    private String courseName;
    private String teacherName;
    private String classroomName;
    private String courseDescription;
    private int price;
    private String startDate;
    private String lastDate;
    private Period period;
    private int remainedSeat;
    private float averageScore;

    private CourseResponseForPayment(
            String subjectName, String courseName, String teacherName,
            String classroomName, String courseDescription, int price, String startDate,
            String lastDate, Period period, int remainedSeat, float averageScore
    ) {
        this.subjectName = subjectName;
        this.courseName = courseName;
        this.teacherName = teacherName;
        this.classroomName = classroomName;
        this.courseDescription = courseDescription;
        this.price = price;
        this.startDate = startDate;
        this.lastDate = lastDate;
        this.period = period;
        this.remainedSeat = remainedSeat;
        this.averageScore = averageScore;
    }

    public static CourseResponseForPayment from(
            GetCourseResponse getCourseResponse, String subjectName, String teacherName,
            GetTimePeriodResponse getTimePeriodResponse, String classroomName
    ) {
        return new CourseResponseForPayment(
                subjectName,
                getCourseResponse.getName(),
                teacherName,
                classroomName,
                getCourseResponse.getDescription(),
                getCourseResponse.getPrice(),
                getCourseResponse.getStartDate(),
                getCourseResponse.getLastDate(),
                getTimePeriodResponse.getPeriod(),
                getCourseResponse.getRemainedSeat(),
                getCourseResponse.getAverageScore()
        );
    }
}
