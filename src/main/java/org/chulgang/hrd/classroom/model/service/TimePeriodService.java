package org.chulgang.hrd.classroom.model.service;

import org.chulgang.hrd.classroom.domain.Period;
import org.chulgang.hrd.classroom.dto.GetTimePeriodsResponse;

public interface TimePeriodService {
    GetTimePeriodsResponse getTimePeriodsByClassroomId(Long classroomId);

    Period getTimePeriod(Long id);
}
