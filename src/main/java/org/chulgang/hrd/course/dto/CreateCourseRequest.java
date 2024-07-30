package org.chulgang.hrd.course.dto;

import jakarta.servlet.http.HttpServletRequest;
import org.chulgang.hrd.util.FormatConverter;

import java.time.LocalDate;

public class CreateCourseRequest {
    private Long subjectId;
    private Long teacherId;
    private Long timePeriodId;
    private String name;
    private String description;
    private int price;
    private LocalDate startDate;
    private LocalDate lastDate;

    private CreateCourseRequest(
            Long subjectId, Long teacherId, Long timePeriodId, String name,
            String description, int price, LocalDate startDate, LocalDate lastDate
    ) {
        this.subjectId = subjectId;
        this.teacherId = teacherId;
        this.timePeriodId = timePeriodId;
        this.name = name;
        this.description = description;
        this.price = price;
        this.startDate = startDate;
        this.lastDate = lastDate;
    }

    public static CreateCourseRequest from(HttpServletRequest request) {
        return new CreateCourseRequest(
                Long.parseLong(request.getParameter("subjectId")),
                Long.parseLong(request.getParameter("teacherId")),
                Long.parseLong(request.getParameter("timePeriodId")),
                request.getParameter("name"),
                request.getParameter("description"),
                FormatConverter.parseToInt(request.getParameter("price")),
                FormatConverter.parseToDate(request.getParameter("startDate")),
                FormatConverter.parseToDate(request.getParameter("lastDate"))
        );
    }

    public static CreateCourseRequest of(Long subjectId, Long teacherId, Long timePeriodId, String name,
                                         String description, int price, LocalDate startDate, LocalDate lastDate) {
        return new CreateCourseRequest(
                subjectId, teacherId, timePeriodId, name, description, price, startDate, lastDate
        );
    }

    public Long getSubjectId() {
        return subjectId;
    }

    public Long getTeacherId() {
        return teacherId;
    }

    public Long getTimePeriodId() {
        return timePeriodId;
    }

    public LocalDate getStartDate() {
        return startDate;
    }

    public LocalDate getLastDate() {
        return lastDate;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public int getPrice() {
        return price;
    }
}