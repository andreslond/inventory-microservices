package io.andreslond.salesservice.sale.domain;

import lombok.AllArgsConstructor;
import lombok.Data;

@AllArgsConstructor
@Data
public class Customer {

    private Integer id;

    private String name;

    private Integer cardId;

    private String address;

    private String phone;

    private String email;


}