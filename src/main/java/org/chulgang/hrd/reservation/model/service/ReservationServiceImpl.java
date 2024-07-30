package org.chulgang.hrd.reservation.model.service;

import org.chulgang.hrd.reservation.model.repository.ReservationRepository;
import org.chulgang.hrd.reservation.model.repository.ReservationRepositoryImpl;

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
    public boolean registerReservation(Long memberId, Long courseId) {
        return reservationRepository.registerReservation(memberId, courseId);
    }
}
