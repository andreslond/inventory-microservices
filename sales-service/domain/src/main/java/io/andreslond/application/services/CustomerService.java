package io.andreslond.salesservice.services;

import io.andreslond.dto.Customer;

import java.util.List;

public interface CustomerService {

    void addCustomer(Customer customer);

    void updateCustomer(Customer sale);

    void deleteCustomerById(String saleId);

    Customer getCustomerById(String customerId);

    Customer getCustomerBySaleId(String saleId);

    List<Customer> getAllCustomers();

}
