package com.shopping.cms.service;

import com.shopping.cms.entity.Customer;
import com.shopping.cms.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CustomerService {


    @Autowired
    private CustomerRepository customerRepository;

    public String createCustomer(Customer customer) {
        customerRepository.save(customer);
        return "Customer created successfully...!";
    }

    public ResponseEntity<String> verifyLogin(Customer request){
        Customer customer = customerRepository.findByEmail(request.getEmail());
        if (customer != null && customer.getPassword().equals(request.getPassword())) {
            return ResponseEntity.ok("Login successful");
        } else {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Invalid credentials");
        }
    }


    public List<Customer> getAllCustomers() {
        return customerRepository.findAll();
    }

    public ResponseEntity<Object> updateCustomer(Long id, Customer updatedCustomer) {
        Optional<Customer> existingCustomer = customerRepository.findById(id);
        if (existingCustomer.isPresent()) {
            Customer newCustomer = existingCustomer.get();
            newCustomer.setUsername(updatedCustomer.getUsername());
            newCustomer.setPassword(updatedCustomer.getPassword());
            newCustomer.setConfirmPassword(updatedCustomer.getPassword());
            customerRepository.save(newCustomer);
            return ResponseEntity.ok(newCustomer);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    public ResponseEntity<Object> deleteCustomer(Long id) {
        Optional<Customer> existingCustomer = customerRepository.findById(id);
        if (existingCustomer.isPresent()) {
            customerRepository.deleteById(id);
            return ResponseEntity.status(HttpStatus.OK).body("customer deleted successfully...!");
        } else {
            return ResponseEntity.notFound().build();
        }
    }
}
