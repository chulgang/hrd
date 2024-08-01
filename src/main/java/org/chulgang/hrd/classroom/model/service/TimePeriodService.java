package org.chulgang.hrd.classroom.model.service;

import org.chulgang.hrd.classroom.dto.GetTimePeriodResponse;
import org.chulgang.hrd.classroom.dto.GetTimePeriodsResponse;

public interface TimePeriodService {
    GetTimePeriodsResponse getTimePeriodsByClassroomId(Long classroomId);

    GetTimePeriodResponse getTimePeriod(Long id);
}
