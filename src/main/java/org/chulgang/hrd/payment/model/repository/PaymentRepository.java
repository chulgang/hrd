package org.chulgang.hrd.payment.model.repository;

public interface PaymentRepository {

    boolean executePayment(Long memberId, Long reservationId, int paymentAmount);

}
