package org.chulgang.hrd.reservation.dto;

import java.time.LocalDate;

public class ReservationCourseDetailResponse {

    //과목 이름/ 강좌 이름/ 강사 이름/ 수강 시작일/ 수강 종료일/ 가격/ 시간대/ 강의실 이름/ 평점 평균

    private Long reservationCourseId;
    private String courseName;
    private String teacherName;
    private LocalDate startDate;
    private LocalDate lastDate;
    private int price;
    private String period;
    private String roomName;
    private float averageScore;

}
