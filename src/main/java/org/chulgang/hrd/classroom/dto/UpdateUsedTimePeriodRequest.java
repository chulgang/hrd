package org.chulgang.hrd.classroom.dto;

import org.chulgang.hrd.classroom.domain.TimePeriod;
import org.chulgang.hrd.course.dto.CreateCourseRequest;

import java.time.LocalDate;

public class UpdateUsedTimePeriodRequest {
    private Long id;
    private LocalDate startDate;
    private LocalDate lastDate;

    private UpdateUsedTimePeriodRequest(Long id, LocalDate startDate, LocalDate lastDate) {
        this.id = id;
        this.startDate = startDate;
        this.lastDate = lastDate;
    }

    public static UpdateUsedTimePeriodRequest from(CreateCourseRequest createCourseRequest) {
        return new UpdateUsedTimePeriodRequest(
                createCourseRequest.getTimePeriodId(),
                createCourseRequest.getStartDate(),
                createCourseRequest.getLastDate()
        );
    }

    public Long getId() {
        return id;
    }

    public LocalDate getStartDate() {
        return startDate;
    }

    public LocalDate getLastDate() {
        return lastDate;
    }

    public boolean updateDates(TimePeriod timePeriod) {
        if (startDate.isAfter(timePeriod.getStartDate()) && lastDate.isBefore(timePeriod.getLastDate())) {
            return false;
        }

        if (startDate.isAfter(timePeriod.getStartDate())) {
            startDate = timePeriod.getStartDate();
        }
        if (lastDate.isBefore(timePeriod.getLastDate())) {
            lastDate = timePeriod.getLastDate();
        }
        return true;
    }
}
