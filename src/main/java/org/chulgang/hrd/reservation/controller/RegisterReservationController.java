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
import org.chulgang.hrd.users.dto.UsersLoginResponse;

import java.io.IOException;

import static org.chulgang.hrd.course.util.RequestConstant.RESERVATION_SERVICE_ATTRIBUTE_NAME;

@WebServlet(urlPatterns = {"/register-reservation.do"})
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
        UsersLoginResponse user = (UsersLoginResponse) session.getAttribute("dto");
        Long userId = user.getId();
        Long courseId = Long.parseLong(request.getParameter("courseId"));

        if (reservationService.isAlreadyReserved(userId, courseId)) {
            response.getWriter().write("<script>alert('이미 예약되어 있습니다.'); window.location.href = '/reservation-list';</script>");
        } else {
            boolean isReserved = reservationService.registerReservation(userId, courseId);

            if (isReserved) {
                response.sendRedirect(request.getContextPath() + "/elearn/reservation-list.do");
            } else {
                response.sendRedirect(request.getContextPath() + "/elearn/error.do");
            }
        }
    }
}
