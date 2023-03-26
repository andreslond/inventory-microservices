package io.andreslond.salesservice.domain;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.sql.Timestamp;

@Data
@AllArgsConstructor
public class Sale {

    private Integer Id;

    private Timestamp sale_date;

    private Integer total;

    private double tax;

    private boolean canceled;

    private Integer payment_receipt_id;

    private Integer customer_Id;

    private Integer user_id;

}