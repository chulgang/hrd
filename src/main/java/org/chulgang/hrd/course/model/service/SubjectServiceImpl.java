package org.chulgang.hrd.course.model.service;

import org.chulgang.hrd.course.dto.GetSubjectsResponse;
import org.chulgang.hrd.course.model.repository.SubjectRepository;
import org.chulgang.hrd.course.model.repository.SubjectRepositoryImpl;
import org.chulgang.hrd.util.DbConnection;

public class SubjectServiceImpl implements SubjectService {
    private static final SubjectService INSTANCE = new SubjectServiceImpl(SubjectRepositoryImpl.getInstance());
    private final SubjectRepository subjectRepository;

    public SubjectServiceImpl(SubjectRepository subjectRepository) {
        this.subjectRepository = subjectRepository;
    }

    public static SubjectService getInstance() {
        return INSTANCE;
    }

    @Override
    public GetSubjectsResponse getSubjects() {
        DbConnection.initialize();
        return GetSubjectsResponse.from(subjectRepository.findAll());
    }

    @Override
    public String getSubject(Long id) {
        DbConnection.initialize();
        return subjectRepository.findNameById(id);
    }
}
