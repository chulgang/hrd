package org.chulgang.hrd.course.model.testutil;

import org.junit.jupiter.params.provider.Arguments;

import java.util.stream.Stream;

public class CourseTestDataProvider {
    public static Stream<Arguments> provideCourseData() {
        return Stream.of(
                Arguments.of(
                        CourseTestConstant.COURSE_ID1, CourseTestConstant.SUBJECT_ID1, CourseTestConstant.TEACHER_ID1, CourseTestConstant.TIME_PERIOD_ID1, CourseTestConstant.NAME1,
                        CourseTestConstant.DESCRIPTION1, CourseTestConstant.PRICE1, CourseTestConstant.START_DATE1, CourseTestConstant.LAST_DATE1, CourseTestConstant.AVERAGE_SCORE1, CourseTestConstant.REMAINED_SEAT1
                ),
                Arguments.of(
                        CourseTestConstant.COURSE_ID2, CourseTestConstant.SUBJECT_ID2, CourseTestConstant.TEACHER_ID2, CourseTestConstant.TIME_PERIOD_ID2, CourseTestConstant.NAME2,
                        CourseTestConstant.DESCRIPTION2, CourseTestConstant.PRICE2, CourseTestConstant.START_DATE2, CourseTestConstant.LAST_DATE2, CourseTestConstant.AVERAGE_SCORE2, CourseTestConstant.REMAINED_SEAT2
                ),
                Arguments.of(
                        CourseTestConstant.COURSE_ID3, CourseTestConstant.SUBJECT_ID3, CourseTestConstant.TEACHER_ID3, CourseTestConstant.TIME_PERIOD_ID3, CourseTestConstant.NAME3,
                        CourseTestConstant.DESCRIPTION3, CourseTestConstant.PRICE3, CourseTestConstant.START_DATE3, CourseTestConstant.LAST_DATE3, CourseTestConstant.AVERAGE_SCORE3, CourseTestConstant.REMAINED_SEAT3
                )
        );
    }
}