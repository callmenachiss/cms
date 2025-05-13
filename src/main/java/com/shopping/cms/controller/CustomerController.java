package com.shopping.cms.controller;


import com.shopping.cms.entity.Customer;
import com.shopping.cms.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/customer")
@CrossOrigin(origins = "*")
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    //create new customer
    @PostMapping("/createCustomer")
    public ResponseEntity<String> createCustomer(@RequestBody Customer customer) {
        String message=customerService.createCustomer(customer);
        return new ResponseEntity<>(message,HttpStatus.CREATED);
    }

    @PostMapping("/login")
    public ResponseEntity<String> login(@RequestBody Customer request) {
        return customerService.verifyLogin(request);
    }

    @GetMapping("/AllCustomers")
    public List<Customer> getAllCustomers() {
        return customerService.getAllCustomers();
    }

    // In CustomerController.java
    @PutMapping("/update/{id}")
    public ResponseEntity<Object> updateCustomer(@PathVariable Long id, @RequestBody Customer customer) {
        return customerService.updateCustomer(id,customer);
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<Object> deleteCustomer(@PathVariable Long id) {
        return customerService.deleteCustomer(id);
    }
}
