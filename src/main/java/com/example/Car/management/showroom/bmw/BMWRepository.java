package com.example.Car.management.showroom.bmw;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BMWRepository extends JpaRepository<BMW, Long> {
}
