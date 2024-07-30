package org.chulgang.hrd.payment.model.repository;

import org.chulgang.hrd.util.DbConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PaymentRepositoryImpl implements PaymentRepository {
    private static final PaymentRepositoryImpl INSTANCE = new PaymentRepositoryImpl();

    public static PaymentRepositoryImpl getInstance() {
        return INSTANCE;
    }

    @Override
    public boolean executePayment(Long userId, Long reservationId, int paymentAmount) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            connection = DbConnection.getConnection();
            connection.setAutoCommit(false);

            String selectCourseSql = "SELECT c.PRICE, c.REMAINED_SEAT, c.ID AS COURSE_ID FROM RESERVED_COURSE rc JOIN COURSE c ON rc.COURSE_ID = c.ID WHERE rc.RESERVATION_ID = ?";
            preparedStatement = connection.prepareStatement(selectCourseSql);
            preparedStatement.setLong(1, reservationId);
            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                int price = resultSet.getInt("PRICE");
                int remainedSeat = resultSet.getInt("REMAINED_SEAT");
                Long courseId = resultSet.getLong("COURSE_ID");

                if (remainedSeat <= 0) {
                    throw new SQLException("No seats available");
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
                throw new SQLException("Reservation not found");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
