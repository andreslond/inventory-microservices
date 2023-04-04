package io.andreslond.salesservice.domain.repositories;

import io.andreslond.salesservice.domain.entities.Customer;

import java.util.List;

public interface CustomerRepository {

    void saveCustomer(Customer customer);

    void updateCustomer(Customer customer);

    void deleteCustomerById(String customerId);

    Customer getCustomerById(String customerId);

    List<Customer> getAllCustomers();

}
