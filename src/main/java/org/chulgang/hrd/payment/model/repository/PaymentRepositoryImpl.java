package org.chulgang.hrd.payment.model.repository;

import org.chulgang.hrd.payment.domain.PayedCourse;
import org.chulgang.hrd.payment.dto.PaymentCardResponse;
import org.chulgang.hrd.util.DbConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class PaymentRepositoryImpl implements PaymentRepository {
    private static final PaymentRepositoryImpl INSTANCE = new PaymentRepositoryImpl();

    public static PaymentRepositoryImpl getInstance() {
        return INSTANCE;
    }

    @Override
    public boolean executePayment(Long userId, Long reservationId, int paymentAmount) {

        try {
            Connection connection = DbConnection.getConnection();
            connection.setAutoCommit(false);

            String selectCourseSql = "SELECT c.PRICE, c.REMAINED_SEAT, c.ID AS COURSE_ID FROM RESERVED_COURSE rc JOIN COURSE c ON rc.COURSE_ID = c.ID WHERE rc.RESERVATION_ID = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(selectCourseSql);
            preparedStatement.setLong(1, reservationId);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                int price = resultSet.getInt("PRICE");
                int remainedSeat = resultSet.getInt("REMAINED_SEAT");
                Long courseId = resultSet.getLong("COURSE_ID");

                if (remainedSeat <= 0) {
                    throw new SQLException("남은 자리가 없음");
                }

                String updateWalletSql = "UPDATE WALLET_HISTORY SET CURRENT_AMOUNT = CURRENT_AMOUNT - ?, USED_AMOUNT = USED_AMOUNT + ? WHERE USER_ID = ?";
                preparedStatement = connection.prepareStatement(updateWalletSql);
                preparedStatement.setInt(1, paymentAmount);
                preparedStatement.setInt(2, paymentAmount);
                preparedStatement.setLong(3, userId);
                preparedStatement.executeUpdate();

                String insertPayedCourseSql = "INSERT INTO PAYED_COURSE (ID, COURSE_ID, RESERVATION_ID, PAYED_AT, PAYED_AMOUNT, IS_REFUNDED, IS_EXPIRED) VALUES (PAYED_COURSE_SEQ.NEXTVAL, ?, ?, SYSDATE, ?, 0, 0)";
                preparedStatement = connection.prepareStatement(insertPayedCourseSql);
                preparedStatement.setLong(1, courseId);
                preparedStatement.setLong(2, reservationId);
                preparedStatement.setInt(3, paymentAmount);
                preparedStatement.executeUpdate();

                String updateCourseSql = "UPDATE COURSE SET REMAINED_SEAT = REMAINED_SEAT - 1 WHERE ID = ?";
                preparedStatement = connection.prepareStatement(updateCourseSql);
                preparedStatement.setLong(1, courseId);
                preparedStatement.executeUpdate();

                connection.commit();
                return true;
            } else {
                throw new SQLException("예약을 찾을 수 없음");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public List<PaymentCardResponse> findPaymentCourseCardByMemberId(Long userId, int pageNumber) {
        List<PaymentCardResponse> payments = new ArrayList<>();
        int pageSize = 10;
        int offset = (pageNumber - 1) * pageSize;

        try {
            Connection connection = DbConnection.getConnection();
            String sql =
                    "SELECT c.NAME, c.DESCRIPTION, pc.PAYED_AMOUNT, pc.IS_REFUNDED, c.START_DATE, c.LAST_DATE " +
                    "FROM PAYED_COURSE pc " +
                    "JOIN COURSE c ON pc.COURSE_ID = c.ID " +
                    "JOIN RESERVATION r ON pc.RESERVATION_ID = r.ID " +
                    "WHERE r.STUDENT_ID = ? " +
                    "OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setLong(1, userId);
            preparedStatement.setInt(2, offset);
            preparedStatement.setInt(3, pageSize);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                PaymentCardResponse payment = new PaymentCardResponse();
                payment.setCourseName(resultSet.getString("NAME"));
                payment.setCourseDescription(resultSet.getString("DESCRIPTION"));
                payment.setPayedAmount(resultSet.getInt("PAYED_AMOUNT"));
                payment.setRefunded(resultSet.getBoolean("IS_REFUNDED"));
                payment.setStartDate(resultSet.getDate("START_DATE").toLocalDate());
                payment.setEndDate(resultSet.getDate("LAST_DATE").toLocalDate());
                payments.add(payment);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return payments;
    }

    @Override
    public Optional<PayedCourse> findPayedCourseById(Long payedCourseId) {
        String selectPayedCourse = "SELECT * FROM PAYED_COURSE WHERE ID = ?";
        try {
            Connection connection = DbConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(selectPayedCourse);
            preparedStatement.setLong(1, payedCourseId);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                PayedCourse payedCourse = new PayedCourse();
                payedCourse.setId(resultSet.getLong("ID"));
                payedCourse.setCourseId(resultSet.getLong("COURSE_ID"));
                payedCourse.setReservationId(resultSet.getLong("RESERVATION_ID"));
                payedCourse.setModifiedAt(resultSet.getTimestamp("MODIFIED_AT").toLocalDateTime());
                payedCourse.setPayedAt(resultSet.getTimestamp("PAYED_AT").toLocalDateTime());
                payedCourse.setPayedAmount(resultSet.getInt("PAYED_AMOUNT"));
                payedCourse.setRefunded(resultSet.getBoolean("IS_REFUNDED"));
                payedCourse.setRefundedAt(resultSet.getTimestamp("REFUNDED_AT") != null ? resultSet.getTimestamp("REFUNDED_AT").toLocalDateTime() : null);
                payedCourse.setExpired(resultSet.getBoolean("IS_EXPIRED"));
                return Optional.of(payedCourse);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return Optional.empty();
    }

    @Override
    public int countPayments(Long userId) {
        String sql =
                "SELECT COUNT(*) " +
                "FROM RESERVATION r " +
                "JOIN PAYED_COURSE pc ON r.ID = pc.RESERVATION_ID " +
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
}