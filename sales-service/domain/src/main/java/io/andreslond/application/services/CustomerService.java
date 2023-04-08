package io.andreslond.application.services;

import io.andreslond.application.model.customer.Customer;

import java.util.List;

public interface CustomerService {

    void addCustomer(Customer customer);

    void updateCustomer(Customer sale);

    void deleteCustomerById(String saleId);

    Customer getCustomerById(String customerId);

    Customer getCustomerBySaleId(String saleId);

    List<Customer> getAllCustomers();

}
