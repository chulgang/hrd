package org.chulgang.hrd.reservation.controller;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.chulgang.hrd.aop.LoggingAspect;
import org.chulgang.hrd.reservation.model.service.ReservationService;

import java.io.IOException;

import static org.chulgang.hrd.course.util.RequestConstant.RESERVATION_SERVICE_ATTRIBUTE_NAME;

@WebServlet(urlPatterns = {"/register-reservation"})
public class RegisterReservationController extends HttpServlet {
    private ReservationService reservationService;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);

        reservationService = LoggingAspect.createProxy(ReservationService.class,
                (ReservationService) config.getServletContext().getAttribute(RESERVATION_SERVICE_ATTRIBUTE_NAME));
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        //User user = (User) session.getAttribute("dto");
        //Long userId = user.getUserId();
        Long userId = 1L;
        //Long courseId = Long.parseLong(request.getParameter("courseId"));
        Long courseId = 1L;
        boolean isReserved = reservationService.registerReservation(userId, courseId);

        if (isReserved) {
            response.sendRedirect(request.getContextPath() + "/reservation-list");
        } else {
            response.sendRedirect(request.getContextPath() + "/404");
        }
    }
}
