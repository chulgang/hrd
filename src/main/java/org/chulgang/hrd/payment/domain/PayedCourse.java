package org.chulgang.hrd.payment.domain;

import java.time.LocalDateTime;

public class PayedCourse {

    private Long id;
    private Long courseId;
    private Long reservationId;
    private LocalDateTime modifiedAt;
    private LocalDateTime payedAt;
    private int payedAmount;
    private boolean isRefunded;
    private LocalDateTime refundedAt;
    private boolean isExpired;

}
