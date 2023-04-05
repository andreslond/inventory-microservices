package io.andreslond.application.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.sql.Timestamp;

@Data
@AllArgsConstructor
public class Sale {

    private Integer id;

    private Timestamp saleDate;

    private Integer total;

    private double tax;

    private boolean canceled;

    private Integer paymentReceiptId;

    private Integer customerId;

    private Integer userId;

}