package io.andreslond.application.model.customer;

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