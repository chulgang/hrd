package org.chulgang.hrd.reservation.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.chulgang.hrd.aop.LoggingAspect;
import org.chulgang.hrd.reservation.model.service.ReservationService;

import java.io.IOException;

@WebServlet(urlPatterns = {"/elearn/delete-reservation.do"})
public class DeleteReservationController extends HttpServlet {
    private ReservationService reservationService;

    public DeleteReservationController(ReservationService reservationService) {
        this.reservationService = LoggingAspect.createProxy(ReservationService.class, reservationService);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long reservationCourseId = Long.parseLong(request.getParameter("reservationCourseId"));
        boolean isDeleted = reservationService.deleteReservation(reservationCourseId);
        if (isDeleted) {
            response.sendRedirect(request.getContextPath() + "/reservation-list.do");
        } else {
            response.sendRedirect(request.getContextPath() + "/reservation-delete-failure.do");
        }
    }
}
