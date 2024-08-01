package org.chulgang.hrd.classroom.model.service;

import org.chulgang.hrd.classroom.domain.Period;
import org.chulgang.hrd.classroom.dto.GetTimePeriodsResponse;
import org.chulgang.hrd.classroom.model.repository.TimePeriodRepository;
import org.chulgang.hrd.classroom.model.repository.TimePeriodRepositoryImpl;

public class TimePeriodServiceImpl implements TimePeriodService {
    private static final TimePeriodService INSTANCE = new TimePeriodServiceImpl(TimePeriodRepositoryImpl.getInstance());
    private final TimePeriodRepository timePeriodRepository;

    public TimePeriodServiceImpl(TimePeriodRepository timePeriodRepository) {
        this.timePeriodRepository = timePeriodRepository;
    }

    public static TimePeriodService getInstance() {
        return INSTANCE;
    }

    @Override
    public GetTimePeriodsResponse getTimePeriodsByClassroomId(Long classroomId) {
        return GetTimePeriodsResponse.from(timePeriodRepository.findAllByClassroomId(classroomId));
    }

    @Override
    public Period getTimePeriod(Long id) {
        return Period.valueOf(timePeriodRepository.findPeriodById(id));
    }
}
