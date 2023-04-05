package io.andreslond.application.repositories;

import io.andreslond.dto.Customer;

import java.util.List;

public interface CustomerRepository {

    void saveCustomer(Customer customer);

    void updateCustomer(Customer customer);

    void deleteCustomerById(String customerId);

    Customer getCustomerById(String customerId);

    List<Customer> getAllCustomers();

}
