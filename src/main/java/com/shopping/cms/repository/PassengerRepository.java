package com.shopping.cms.repository;

import com.shopping.cms.entity.Passengers;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PassengerRepository extends JpaRepository<Passengers, Long> {
}
