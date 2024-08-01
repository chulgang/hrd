package org.chulgang.hrd.payment.controller;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.chulgang.hrd.aop.LoggingAspect;
import org.chulgang.hrd.payment.model.service.PaymentService;
import org.chulgang.hrd.users.dto.UsersLoginResponse;

import java.io.IOException;

import static org.chulgang.hrd.course.util.RequestConstant.PAYMENT_SERVICE_ATTRIBUTE_NAME;

@WebServlet(urlPatterns = {"/elearn/execute-payment.do"})
public class ExecutePaymentController extends HttpServlet {
    private PaymentService paymentService;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        paymentService = LoggingAspect.createProxy(PaymentService.class,
                (PaymentService) config.getServletContext().getAttribute(PAYMENT_SERVICE_ATTRIBUTE_NAME));
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        UsersLoginResponse user = (UsersLoginResponse) session.getAttribute("dto");
        Long userId = user.getId();
        Long reservationId = Long.parseLong(request.getParameter("reservationId"));
        Long courseId = Long.parseLong(request.getParameter("courseId"));
        int paymentAmount = Integer.parseInt(request.getParameter("paymentAmount"));

        boolean isPaymentSuccessful = paymentService.executePayment(userId, reservationId, courseId ,paymentAmount);

        if (isPaymentSuccessful) {
            response.sendRedirect(request.getContextPath() + "/payment-success");
        } else {
            response.sendRedirect(request.getContextPath() + "/404");
        }
    }
}
