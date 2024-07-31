package org.chulgang.hrd.payment.model.service;

import org.chulgang.hrd.payment.dto.PaidCourseDetailResponse;
import org.chulgang.hrd.payment.dto.PaymentCardResponse;

import java.util.List;

public interface PaymentService {

    boolean executePayment(Long memberId, Long reservationId, int paymentAmount);

    List<PaymentCardResponse> getPagedPayments(Long userId, int pageNumber);

    PaidCourseDetailResponse getPaidCourseDetail(Long courseId);
}
