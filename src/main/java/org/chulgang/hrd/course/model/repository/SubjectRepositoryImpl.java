package org.chulgang.hrd.course.model.repository;

import org.chulgang.hrd.course.domain.Subject;
import org.chulgang.hrd.util.ConnectionContainer;
import org.chulgang.hrd.util.DataSelector;
import org.chulgang.hrd.util.StatementGenerator;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class SubjectRepositoryImpl implements SubjectRepository {
    private static final SubjectRepository INSTANCE = new SubjectRepositoryImpl();

    public static SubjectRepository getInstance() {
        return INSTANCE;
    }

    @Override
    public List<Subject> findAll() {
        String sql = "select * from SUBJECT";

        Statement statement = StatementGenerator.generateStatement();
        ResultSet resultSet = DataSelector.getResultSet(statement, sql);
        List<Subject> subjects = new ArrayList<>();

        while (true) {
            String[] data = DataSelector.getEntityData(resultSet);
            if (data == null) {
                break;
            }

            subjects.add(Subject.from(data));
        }

        ConnectionContainer.close(resultSet);
        ConnectionContainer.close(statement);

        return subjects;
    }
}
