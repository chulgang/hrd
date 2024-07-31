package org.chulgang.hrd.reservation.model.repository;

import org.chulgang.hrd.reservation.dto.ReservationCardResponse;

import java.util.List;

public interface ReservationRepository {

    boolean registerReservation(Long memberId, Long courseId);

    List<ReservationCardResponse> findReservationCardByMemberId(Long memberId, int pageNumber);

    boolean deleteReservation(Long memberId, Long reservationId);

    int countReservations(Long userId);
}
