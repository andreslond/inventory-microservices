package io.andreslond.salesservice.sale.domain;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.math.BigDecimal;
@Data
@AllArgsConstructor
public class SaleDetail {

    private Integer id;

    private Double amount;

    private BigDecimal price;

    private Integer saleId;

    private Integer productId;
}