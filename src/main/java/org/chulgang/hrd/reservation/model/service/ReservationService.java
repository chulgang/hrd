package org.chulgang.hrd.reservation.model.service;

import org.chulgang.hrd.reservation.dto.ReservationCardResponse;

import java.util.List;

public interface ReservationService {

    boolean registerReservation(Long memberId, Long courseId);

    List<ReservationCardResponse> getPagedReservations(Long id , int pageNumber);

    boolean deleteReservation(Long memberId, Long reservationId);

}
