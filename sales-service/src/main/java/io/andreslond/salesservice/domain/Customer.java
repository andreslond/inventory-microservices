package io.andreslond.salesservice.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@AllArgsConstructor
@Data
public class Customer {

    private Integer id;

    private String name;

    private Integer id_card;

    private String address;

    private String phone;

    private String email;


}