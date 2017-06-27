package com.niit.dt.service;

import java.util.List;

import com.niit.dt.model.Customer;

/**
 * Created by Le on 1/25/2016.
 */
public interface CustomerService {

    void addCustomer (Customer customer);

    Customer getCustomerById (int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername (String username);
}
