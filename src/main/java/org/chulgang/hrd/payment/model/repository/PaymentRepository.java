package org.chulgang.hrd.payment.model.repository;

import org.chulgang.hrd.payment.domain.PayedCourse;
import org.chulgang.hrd.payment.dto.PaymentCardResponse;

import java.util.List;
import java.util.Optional;

public interface PaymentRepository {

    boolean executePayment(Long memberId, Long reservationId, int paymentAmount);

    List<PaymentCardResponse> findPaymentCourseCardByMemberId(Long userId, int pageNumber);

    Optional<PayedCourse> findPayedCourseById(Long payedCourseId);

}
