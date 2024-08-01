package org.chulgang.hrd.classroom.model.service;

import org.chulgang.hrd.classroom.dto.GetTimePeriodResponse;
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
    public GetTimePeriodResponse getTimePeriod(Long id) {
        return GetTimePeriodResponse.from(timePeriodRepository.findById(id));
    }
}
