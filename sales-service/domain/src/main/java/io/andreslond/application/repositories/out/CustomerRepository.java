package io.andreslond.application.repositories.out;


import io.andreslond.application.model.customer.Customer;

import java.util.List;

public interface CustomerRepository {

    void saveCustomer(Customer customer);

    void updateCustomer(Customer customer);

    void deleteCustomerById(String customerId);

    Customer getCustomerById(String customerId);

    List<Customer> getAllCustomers();

}
