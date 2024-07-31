package org.chulgang.hrd.classroom.model.repository;

import org.chulgang.hrd.classroom.domain.TimePeriod;
import org.chulgang.hrd.util.ConnectionContainer;
import org.chulgang.hrd.util.DataSelector;
import org.chulgang.hrd.util.StatementGenerator;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class TimePeriodRepositoryImpl implements TimePeriodRepository {
    private static final TimePeriodRepository INSTANCE = new TimePeriodRepositoryImpl();

    public static TimePeriodRepository getInstance() {
        return INSTANCE;
    }

    @Override
    public List<TimePeriod> findAllByClassroomId(Long classroomId) {
        String sql = "select * from TIME_PERIOD where classroom_id = " + classroomId;

        Statement statement = StatementGenerator.generateStatement();
        ResultSet resultSet = DataSelector.getResultSet(statement, sql);
        List<TimePeriod> timePeriods = new ArrayList<>();

        while (true) {
            String[] data = DataSelector.getEntityData(resultSet);
            if (data == null) {
                break;
            }

            timePeriods.add(TimePeriod.from(data));
        }

        ConnectionContainer.close(resultSet);
        ConnectionContainer.close(statement);

        return timePeriods;
    }
}
