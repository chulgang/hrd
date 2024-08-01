package org.chulgang.hrd.classroom.model.repository;

import org.chulgang.hrd.classroom.domain.TimePeriod;
import org.chulgang.hrd.classroom.exception.TimePeriodIdNotFoundException;
import org.chulgang.hrd.exception.GlobalExceptionHandler;
import org.chulgang.hrd.util.ConnectionContainer;
import org.chulgang.hrd.util.DataSelector;
import org.chulgang.hrd.util.DbConnection;
import org.chulgang.hrd.util.StatementGenerator;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import static org.chulgang.hrd.classroom.exception.ExceptionMessage.TIME_PERIOD_ID_NOT_FOUND_EXCEPTION_MESSAGE;

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
        DbConnection.reset();

        return timePeriods;
    }

    @Override
    public String findPeriodById(Long id) {
        String sql = "select TIME_PERIOD from TIME_PERIOD where id = " + id;

        Statement statement = StatementGenerator.generateStatement();
        ResultSet resultSet = DataSelector.getResultSet(statement, sql);

        try {
            if (resultSet.next()) {
                ConnectionContainer.close(resultSet);
                ConnectionContainer.close(statement);
                DbConnection.reset();
                return resultSet.getString(1);
            }
        } catch (SQLException e) {
            GlobalExceptionHandler.throwRuntimeException(
                    new TimePeriodIdNotFoundException(String.format(TIME_PERIOD_ID_NOT_FOUND_EXCEPTION_MESSAGE, id)));
        }

        return null;
    }
}
