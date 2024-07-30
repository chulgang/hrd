package org.chulgang.hrd.payment.model.service;

public interface PaymentService {

    boolean executePayment(Long memberId, Long reservationId, int paymentAmount);

}
