package org.chulgang.hrd.reservation.model.service;

import org.chulgang.hrd.payment.dto.PaidCourseDetailResponse;
import org.chulgang.hrd.reservation.dto.ReservationCardResponse;
import org.chulgang.hrd.reservation.dto.ReservationCourseDetailResponse;

import java.util.List;

public interface ReservationService {

    boolean registerReservation(Long memberId, Long courseId);

    List<ReservationCardResponse> getPagedReservations(Long id , int pageNumber);

    ReservationCourseDetailResponse getReservationCourseDetail(Long courseId);

    boolean deleteReservation(Long memberId, Long reservationId);

    int getTotalReservations(Long userId);

}
