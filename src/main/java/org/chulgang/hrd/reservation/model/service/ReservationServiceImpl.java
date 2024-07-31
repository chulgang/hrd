package org.chulgang.hrd.reservation.model.service;

import org.chulgang.hrd.reservation.dto.ReservationCardResponse;
import org.chulgang.hrd.reservation.model.repository.ReservationRepository;
import org.chulgang.hrd.reservation.model.repository.ReservationRepositoryImpl;

import java.util.List;

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

    @Override
    public List<ReservationCardResponse> getPagedReservations(Long memberId, int pageNumber) {
        return reservationRepository.findReservationCardByMemberId(memberId, pageNumber);
    }

    @Override
    public boolean deleteReservation(Long memberId, Long reservationId) {
        return reservationRepository.deleteReservation(memberId, reservationId);
    }
}
