package org.chulgang.hrd.payment.model.service;

import org.chulgang.hrd.course.model.service.CourseService;
import org.chulgang.hrd.course.model.service.CourseServiceImpl;
import org.chulgang.hrd.payment.domain.PayedCourse;
import org.chulgang.hrd.payment.dto.PaidCourseDetailResponse;
import org.chulgang.hrd.payment.dto.PaymentCardResponse;
import org.chulgang.hrd.payment.model.repository.PaymentRepository;
import org.chulgang.hrd.payment.model.repository.PaymentRepositoryImpl;
import org.chulgang.hrd.reservation.model.service.ReservationService;
import org.chulgang.hrd.reservation.model.service.ReservationServiceImpl;
import org.chulgang.hrd.wallethistory.model.service.WalletHistoryService;
import org.chulgang.hrd.wallethistory.model.service.WalletHistoryServiceImpl;

import java.util.List;
import java.util.Optional;

public class PaymentServiceImpl implements PaymentService {
    private static final PaymentServiceImpl INSTANCE = new PaymentServiceImpl(
            PaymentRepositoryImpl.getInstance(), WalletHistoryServiceImpl.getInstance(),
            ReservationServiceImpl.getInstance(), CourseServiceImpl.getInstance());
    private final PaymentRepository paymentRepository;
    private final WalletHistoryService walletHistoryService;
    private final ReservationService reservationService;
    private final CourseService courseService;

    public PaymentServiceImpl(PaymentRepository paymentRepository,
                              WalletHistoryService walletHistoryService,
                              ReservationService reservationService, CourseService courseService) {
        this.paymentRepository = paymentRepository;
        this.walletHistoryService = walletHistoryService;
        this.reservationService = reservationService;
        this.courseService = courseService;
    }

    public static PaymentServiceImpl getInstance() {
        return INSTANCE;
    }

    @Override
    public boolean executePayment(Long userId, Long reservationId, Long courseId ,int paymentAmount) {
        int currentAmount = walletHistoryService.currentAmountByUser(userId);
        if (currentAmount < paymentAmount) {
            throw new IllegalArgumentException("잔액이 부족합니다. 잔액 : " + paymentAmount);
        }

        int remainedSeat = courseService.getRemainedSeat(courseId);
        if (remainedSeat <= 0) {
            throw new IllegalArgumentException("남은자리가 없습니다.");
        }

        walletHistoryService.deductFromWallet(userId, paymentAmount);
        paymentRepository.insertPayedCourse(userId, reservationId, courseId, paymentAmount);
        courseService.updateRemainedSeat(courseId, remainedSeat - 1);
        reservationService.updateReservationStatus(reservationId, 1);
        return true;
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

    @Override
    public boolean refundPayment(Long userId, Long payedCourseId) {
        PayedCourse payedCourse = paymentRepository.findPayedCourseById(payedCourseId)
                .orElseThrow(() -> new IllegalArgumentException("강좌 없음"));

        if (payedCourse.isRefunded()) {
            throw new IllegalArgumentException("이미 환불된 강좌입니다.");
        }

        walletHistoryService.refundWallet(userId, payedCourse.getPayedAmount());

        paymentRepository.updatePayedCourseRefundStatus(payedCourseId, true);

        courseService.updateRemainedSeat(payedCourse.getCourseId(),
                courseService.getRemainedSeat(payedCourse.getCourseId()) + 1);

        reservationService.updateReservationStatus(payedCourse.getReservationId(), 0);

        return true;
    }
}
