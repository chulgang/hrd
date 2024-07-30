package org.chulgang.hrd.reservation.dto;

import java.time.LocalDate;

public class ReservationCardResponse {
    private String courseName;
    private String courseDescription;
    private LocalDate startDate;
    private int remainedSeat;
    private int price;
    private float averageScore;

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getCourseDescription() {
        return courseDescription;
    }

    public void setCourseDescription(String courseDescription) {
        this.courseDescription = courseDescription;
    }

    public LocalDate getStartDate() {
        return startDate;
    }

    public void setStartDate(LocalDate startDate) {
        this.startDate = startDate;
    }

    public int getRemainedSeat() {
        return remainedSeat;
    }

    public void setRemainedSeat(int remainedSeat) {
        this.remainedSeat = remainedSeat;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public float getAverageScore() {
        return averageScore;
    }

    public void setAverageScore(float averageScore) {
        this.averageScore = averageScore;
    }
}
