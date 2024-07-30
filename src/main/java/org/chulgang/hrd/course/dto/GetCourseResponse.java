package org.chulgang.hrd.course.dto;

import org.chulgang.hrd.course.domain.Course;
import org.chulgang.hrd.util.FormatConverter;

import java.time.LocalDate;
import java.time.LocalDateTime;

public class GetCourseResponse {
    private Long id;
    private String name;
    private String description;
    private int price;
    private String startDate;
    private String lastDate;
    private float averageScore;
    private int remainedSeat;
    private String createdAt;
    private String modifiedAt;

    private GetCourseResponse(
            Long id,
            String name,
            String description,
            int price,
            String startDate,
            String lastDate,
            float averageScore,
            int remainedSeat,
            String createdAt,
            String modifiedAt
    ) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.startDate = startDate;
        this.lastDate = lastDate;
        this.averageScore = averageScore;
        this.remainedSeat = remainedSeat;
        this.createdAt = createdAt;
        this.modifiedAt = modifiedAt;
    }

    public static GetCourseResponse from(Course course) {
        String createdAt = null;
        if (course.getCreatedAt() != null) {
            createdAt = FormatConverter.parseToString(course.getCreatedAt());
        }

        String modifiedAt = null;
        if (course.getModifiedAt() != null) {
            modifiedAt = FormatConverter.parseToString(course.getModifiedAt());
        }

        return new GetCourseResponse(
                course.getId(),
                course.getName(),
                course.getDescription(),
                course.getPrice(),
                FormatConverter.parseToString(course.getStartDate()),
                FormatConverter.parseToString(course.getLastDate()),
                course.getAverageScore(),
                course.getRemainedSeat(),
                createdAt,
                modifiedAt
        );
    }

    public static GetCourseResponse of(
            Long id, String name, String description, int price, LocalDate startDate, LocalDate lastDate,
            float averageScore, int remainedSeat, LocalDateTime createdAt, LocalDateTime modifiedAt
    ) {
        String parsedStartDate = FormatConverter.parseToString(startDate);
        String parsedLastDate = FormatConverter.parseToString(lastDate);
        String parsedCreatedAt = FormatConverter.parseToString(createdAt);
        String parsedModifiedAt = FormatConverter.parseToString(modifiedAt);

        return new GetCourseResponse(
                id, name, description, price, parsedStartDate, parsedLastDate,
                averageScore, remainedSeat, parsedCreatedAt, parsedModifiedAt
        );
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public String getStartDate() {
        return startDate;
    }

    public String getLastDate() {
        return lastDate;
    }

    public float getAverageScore() {
        return averageScore;
    }

    public int getRemainedSeat() {
        return remainedSeat;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public String getModifiedAt() {
        return modifiedAt;
    }

    public int getPrice() {
        return price;
    }
}
