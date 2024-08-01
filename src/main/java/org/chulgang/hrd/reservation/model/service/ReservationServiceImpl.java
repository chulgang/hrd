package org.chulgang.hrd.reservation.model.service;

import org.chulgang.hrd.payment.domain.PayedCourse;
import org.chulgang.hrd.payment.dto.PaidCourseDetailResponse;
import org.chulgang.hrd.reservation.dto.ReservationCardResponse;
import org.chulgang.hrd.reservation.dto.ReservationCourseDetailResponse;
import org.chulgang.hrd.reservation.entity.ReservationCourse;
import org.chulgang.hrd.reservation.model.repository.ReservationRepository;
import org.chulgang.hrd.reservation.model.repository.ReservationRepositoryImpl;

import java.util.List;
import java.util.Optional;

public class ReservationServiceImpl implements ReservationService {
    private static final ReservationServiceImpl INSTANCE = new ReservationServiceImpl(ReservationRepositoryImpl.getInstance());
    private final ReservationRepository reservationRepository;

    private ReservationServiceImpl(ReservationRepository reservationRepository) {
        this.reservationRepository = reservationRepository;
    }

    public static ReservationServiceImpl getInstance() {
        return INSTANCE;
    }

    @Override
    public boolean registerReservation(Long userId, Long courseId) {
        return reservationRepository.registerReservation(userId, courseId);
    }

    @Override
    public List<ReservationCardResponse> getPagedReservations(Long memberId, int pageNumber) {
        return reservationRepository.findReservationCardByMemberId(memberId, pageNumber);
    }

    @Override
    public ReservationCourseDetailResponse getReservationCourseDetail(Long id) {
        Optional<ReservationCourse> reservationCourseOptional = reservationRepository.findById(id);
        if (reservationCourseOptional.isPresent()) {
            ReservationCourse reservationCourse = reservationCourseOptional.get();
            //todo : 예약 결합
        } else {
            //todo : 에러
        }
        return null;
    }

    @Override
    public boolean deleteReservation(Long reservationCourseId) {
        return reservationRepository.deleteReservation(reservationCourseId);
    }

    @Override
    public int getTotalReservations(Long userId) {
        return (int) Math.ceil((double) reservationRepository.countReservations(userId) / 10);
    }

    @Override
    public void updateReservationStatus(Long reservationId, int status) {
        reservationRepository.updateReservationStatus(reservationId, status);
    }
}
