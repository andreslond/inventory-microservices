package io.andreslond.salesservice.domain.services;

import io.andreslond.salesservice.domain.entities.Customer;

import java.util.List;

public interface CustomerService {

    void addCustomer(Customer customer);

    void updateCustomer(Customer sale);

    void deleteCustomerById(String saleId);

    Customer getCustomerById(String customerId);

    Customer getCustomerBySaleId(String saleId);

    List<Customer> getAllCustomers();

}
