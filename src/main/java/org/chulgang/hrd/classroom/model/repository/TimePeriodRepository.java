package org.chulgang.hrd.classroom.model.repository;

import org.chulgang.hrd.classroom.domain.TimePeriod;

import java.util.List;

public interface TimePeriodRepository {
    List<TimePeriod> findAllByClassroomId(Long classroomId);
}
