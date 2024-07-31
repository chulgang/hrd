package org.chulgang.hrd.reservation.model.repository;

import org.chulgang.hrd.reservation.dto.ReservationCardResponse;
import org.chulgang.hrd.reservation.entity.ReservationCourse;
import org.chulgang.hrd.util.DbConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

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

    @Override
    public List<ReservationCardResponse> findReservationCardByMemberId(Long memberId, int pageNumber) {
        List<ReservationCardResponse> reservedCourses = new ArrayList<>();
        String selectReservationCardSql =
                "SELECT rc.ID , c.NAME, c.DESCRIPTION, c.START_DATE, c.REMAINED_SEAT, c.PRICE, c.AVERAGE_SCORE " +
                        "FROM RESERVED_COURSE rc " +
                        "JOIN RESERVATION r ON rc.RESERVATION_ID = r.ID " +
                        "JOIN COURSE c ON rc.COURSE_ID = c.ID " +
                        "WHERE r.STUDENT_ID = ? " +
                        "OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
        try {
            Connection connection = DbConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(selectReservationCardSql);
            preparedStatement.setLong(1, memberId);
            preparedStatement.setInt(2, (pageNumber - 1) * 10);
            preparedStatement.setInt(3, 10);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    ReservationCardResponse response = new ReservationCardResponse();
                    response.setReservationCourseId(resultSet.getLong("ID"));
                    response.setCourseName(resultSet.getString("NAME"));
                    response.setCourseDescription(resultSet.getString("DESCRIPTION"));
                    response.setStartDate(resultSet.getDate("START_DATE").toLocalDate());
                    response.setRemainedSeat(resultSet. getInt("REMAINED_SEAT"));
                    response.setPrice(resultSet.getInt("PRICE"));
                    response.setAverageScore(resultSet.getFloat("AVERAGE_SCORE"));
                    reservedCourses.add(response);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return reservedCourses;
    }

    @Override
    public boolean deleteReservation(Long memberId, Long reservationId) {
        String deleteReservationSQL = "DELETE FROM RESERVATION WHERE ID = ? AND STUDENT_ID = ?";
        String deleteReservedCourseSQL = "DELETE FROM RESERVED_COURSE WHERE RESERVATION_ID = ?";

        try {
            Connection connection = DbConnection.getConnection();
            PreparedStatement deleteReservationStmt = connection.prepareStatement(deleteReservationSQL);
            PreparedStatement deleteReservedCourseStmt = connection.prepareStatement(deleteReservedCourseSQL);

            connection.setAutoCommit(false);
            deleteReservedCourseStmt.setLong(1, reservationId);
            deleteReservedCourseStmt.executeUpdate();
            deleteReservationStmt.setLong(1, reservationId);
            deleteReservationStmt.setLong(2, memberId);
            int rowsDeleted = deleteReservationStmt.executeUpdate();
            connection.commit();
            connection.setAutoCommit(true);

            return rowsDeleted > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    @Override
    public int countReservations(Long userId) {
        String sql =
                "SELECT COUNT(*) " +
                "FROM RESERVATION r " +
                "JOIN RESERVED_COURSE rc ON r.ID = rc.RESERVATION_ID " +
                "WHERE r.USER_ID = " + userId;
        try {
            Connection connection = DbConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                return resultSet.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public Optional<ReservationCourse> findById(Long id) {
        String sql = "SELECT * FROM RESERVATION_COURSE WHERE ID = ?";
        try {
            Connection connection = DbConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setLong(1, id);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    ReservationCourse reservationCourse = new ReservationCourse();
                    reservationCourse.setId(resultSet.getLong("ID"));
                    reservationCourse.setCourseId(resultSet.getLong("COURSE_ID"));
                    reservationCourse.setReservationId(resultSet.getLong("RESERVATION_ID"));
                    reservationCourse.setCreatedAt(resultSet.getTimestamp("CREATED_AT").toLocalDateTime());
                    reservationCourse.setIsReserved(resultSet.getInt("IS_RESERVED"));
                    return Optional.of(reservationCourse);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return Optional.empty();
    }
}
