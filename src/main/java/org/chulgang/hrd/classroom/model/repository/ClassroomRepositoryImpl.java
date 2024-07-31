package org.chulgang.hrd.classroom.model.repository;

import org.chulgang.hrd.classroom.domain.Classroom;
import org.chulgang.hrd.util.ConnectionContainer;
import org.chulgang.hrd.util.DataSelector;
import org.chulgang.hrd.util.StatementGenerator;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ClassroomRepositoryImpl implements ClassroomRepository {
    private static final ClassroomRepository INSTANCE = new ClassroomRepositoryImpl();

    public static ClassroomRepository getInstance() {
        return INSTANCE;
    }

    @Override
    public List<Classroom> findAll() {
        String sql = "select * from CLASSROOM";

        Statement statement = StatementGenerator.generateStatement();
        ResultSet resultSet = DataSelector.getResultSet(statement, sql);
        List<Classroom> classrooms = new ArrayList<>();

        while (true) {
            String[] data = DataSelector.getEntityData(resultSet);
            if (data == null) {
                break;
            }

            classrooms.add(Classroom.from(data));
        }

        ConnectionContainer.close(resultSet);
        ConnectionContainer.close(statement);

        return classrooms;
    }
}
