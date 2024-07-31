package org.chulgang.hrd.payment.model.service;


import jakarta.servlet.RequestDispatcher;
import org.chulgang.hrd.payment.domain.PayedCourse;
import org.chulgang.hrd.payment.dto.PaidCourseDetailResponse;
import org.chulgang.hrd.payment.dto.PaymentCardResponse;
import org.chulgang.hrd.payment.model.repository.PaymentRepository;
import org.chulgang.hrd.payment.model.repository.PaymentRepositoryImpl;

import java.util.List;
import java.util.Optional;

public class PaymentServiceImpl implements PaymentService {
    private static final PaymentServiceImpl INSTANCE = new PaymentServiceImpl(PaymentRepositoryImpl.getInstance());
    private final PaymentRepository paymentRepository;

    public PaymentServiceImpl(PaymentRepository paymentRepository) {
        this.paymentRepository = paymentRepository;
    }

    public static PaymentServiceImpl getInstance() {
        return INSTANCE;
    }

    @Override
    public boolean executePayment(Long memberId, Long reservationId, int paymentAmount) {
        return paymentRepository.executePayment(memberId, reservationId, paymentAmount);
    }

    @Override
    public List<PaymentCardResponse> getPagedPayments(Long userId, int pageNumber) {
        return paymentRepository.findPaymentCourseCardByMemberId(userId, pageNumber);
    }

    @Override
    public PaidCourseDetailResponse getPaidCourseDetail(Long courseId) {
        Optional<PayedCourse> payedCourseOptional = paymentRepository.findPayedCourseById(courseId);
        if (payedCourseOptional.isPresent()) {
            PayedCourse payedCourse = payedCourseOptional.get();
            //todo : 강좌 결합
        } else {
            //todo : 에러
        }
        return null;
    }

    @Override
    public int getTotalPayments(Long userId) {
        return (int) Math.ceil((double)  paymentRepository.countPayments(userId) / 10);
    }
}
