package io.andreslond.application.model.product;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class Product {

    private Integer id;
    private String code;
    private String name;
    private BigDecimal price;
    private Integer stock;
    private String description;
    private Boolean available;
    private Integer categoryId;
}
