package org.chulgang.hrd.course.model.repository;

import org.chulgang.hrd.course.domain.Course;
import org.chulgang.hrd.util.ConnectionContainer;
import org.chulgang.hrd.util.DataSelector;
import org.chulgang.hrd.util.StatementGenerator;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CourseRepositoryImpl implements CourseRepository {
    private static final CourseRepositoryImpl INSTANCE = new CourseRepositoryImpl();

    public static CourseRepositoryImpl getInstance() {
        return INSTANCE;
    }

    @Override
    public List<Course> findAll(int size, int pageNumber) {
        int offset = size * (pageNumber - 1);
        String sql = String.format("SELECT * FROM (SELECT c.*, ROW_NUMBER() " +
                "OVER (ORDER BY ID DESC) AS rnum FROM COURSE c) "
                + "WHERE rnum BETWEEN %d AND %d order by ID desc", offset + 1, offset + size);

        Statement statement = StatementGenerator.generateStatement();
        ResultSet resultSet = DataSelector.getResultSet(statement, sql);
        List<Course> courses = new ArrayList<>();

        for (int i = 0; i < size; i++) {
            String[] data = DataSelector.getEntityData(resultSet);
            if (i == 0 && data == null) {
                return courses;
            }
            if (data[0] == null) {
                break;
            }

            courses.add(Course.from(data));
        }

        ConnectionContainer.close(resultSet);
        ConnectionContainer.close(statement);

        return courses;
    }
}
