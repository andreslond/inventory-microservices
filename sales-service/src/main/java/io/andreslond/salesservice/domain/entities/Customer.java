package io.andreslond.salesservice.domain.entities;

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