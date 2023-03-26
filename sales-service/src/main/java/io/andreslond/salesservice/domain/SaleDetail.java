package io.andreslond.salesservice.domain;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.math.BigDecimal;
@Data
@AllArgsConstructor
public class SaleDetail {

    private Integer sale_detail_id;

    private Double amount;

    private BigDecimal price;

    private Integer sale_id;

    private Integer product_id;
}