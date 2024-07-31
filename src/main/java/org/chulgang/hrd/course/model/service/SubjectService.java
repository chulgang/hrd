package org.chulgang.hrd.course.model.service;

import org.chulgang.hrd.course.dto.GetSubjectResponse;
import org.chulgang.hrd.course.dto.GetSubjectsResponse;

public interface SubjectService {
    GetSubjectsResponse getSubjects();

    String getSubject(Long id);
}
