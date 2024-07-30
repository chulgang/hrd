package org.chulgang.hrd.reservation.model.repository;

public interface ReservationRepository {

    boolean registerReservation(Long memberId, Long courseId);

}
