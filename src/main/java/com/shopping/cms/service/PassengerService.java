package com.shopping.cms.service;

import com.shopping.cms.entity.Passengers;
import com.shopping.cms.repository.PassengerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PassengerService {

    @Autowired
    PassengerRepository passengerRepository;

    public String createData(Passengers passengers) {
        passengerRepository.save(passengers);
        return "Customer created successfully...!";
    }
}
