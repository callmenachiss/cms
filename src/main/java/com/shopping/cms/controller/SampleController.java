package com.shopping.cms.controller;

import com.shopping.cms.entity.Customer;
import com.shopping.cms.entity.Passengers;
import com.shopping.cms.service.PassengerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/sample")
@CrossOrigin(origins = "*")
public class SampleController {

    @Autowired
    PassengerService passengerService;


    //create new passenger
    @PostMapping("/createPassenger")
    public ResponseEntity<String> createCustomer(@RequestBody Passengers passengers) {
        String message=passengerService.createData(passengers);
        return new ResponseEntity<>(message, HttpStatus.CREATED);
    }
}
