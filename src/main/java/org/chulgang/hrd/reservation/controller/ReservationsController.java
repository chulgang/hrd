package org.chulgang.hrd.reservation.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.chulgang.hrd.aop.LoggingAspect;
import org.chulgang.hrd.reservation.dto.ReservationCardResponse;
import org.chulgang.hrd.reservation.model.service.ReservationService;
import org.chulgang.hrd.util.DbConnection;

import java.io.IOException;
import java.util.List;

import static org.chulgang.hrd.course.util.RequestConstant.RESERVATION_SERVICE_ATTRIBUTE_NAME;

@WebServlet(urlPatterns = {"/elearn/reservation-list.do"})
public class ReservationsController extends HttpServlet {

    private ReservationService reservationService;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        reservationService = LoggingAspect.createProxy(ReservationService.class,
                (ReservationService) config.getServletContext().getAttribute(RESERVATION_SERVICE_ATTRIBUTE_NAME));
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DbConnection.initialize();
        HttpSession session = request.getSession();
        //User user = (User) session.getAttribute("user");
        //Long userId = user.getuserId();
        Long userId = 1L;
        int pageNumber = 1;
        List<ReservationCardResponse> reservations = reservationService.getPagedReservations(userId, pageNumber);
        request.setAttribute("reservations", reservations);
        RequestDispatcher dispatcher = request.getRequestDispatcher("reservation-list.jsp");
        dispatcher.forward(request, response);
    }

}