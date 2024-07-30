package org.chulgang.hrd.reservation.model.repository;

import org.chulgang.hrd.util.DbConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ReservationRepositoryImpl implements ReservationRepository {
    private static final ReservationRepositoryImpl INSTANCE = new ReservationRepositoryImpl();

    public static ReservationRepositoryImpl getInstance() {
        return INSTANCE;
    }

    @Override
    public boolean registerReservation(Long memberId, Long courseId) {
        String insertReservationSQL = "INSERT INTO RESERVATION (ID, STUDENT_ID, CREATED_AT) VALUES (RESERVATION_SEQ.NEXTVAL, ?, SYSDATE)";
        String insertReservedCourseSQL = "INSERT INTO RESERVED_COURSE (ID, COURSE_ID, RESERVATION_ID, CREATED_AT) VALUES (RESERVED_COURSE_SEQ.NEXTVAL, ?, RESERVATION_SEQ.CURRVAL, SYSDATE)";

        try {
            Connection connection = DbConnection.getConnection();
            PreparedStatement reservationStmt = connection.prepareStatement(insertReservationSQL);
            PreparedStatement reservedCourseStmt = connection.prepareStatement(insertReservedCourseSQL);
            connection.setAutoCommit(false);
            reservationStmt.setLong(1, memberId);
            reservationStmt.executeUpdate();
            reservedCourseStmt.setLong(1, courseId);
            reservedCourseStmt.executeUpdate();
            connection.commit();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

}
