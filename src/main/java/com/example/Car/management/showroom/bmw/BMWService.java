package com.example.Car.management.showroom.bmw;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BMWService {

    @Autowired
    private BMWRepository bmwRepository;

    public List<BMW> getAllCars() {
        return bmwRepository.findAll();
    }

    public void saveCar(BMW car) {
        bmwRepository.save(car);
    }

    public BMW getCarById(Long id) {
        return bmwRepository.findById(id).orElse(null);
    }

    public void deleteCarById(Long id) {
        if (bmwRepository.existsById(id)) {
            bmwRepository.deleteById(id);
        } else {
            throw new RuntimeException("Car with ID " + id + " not found!");
        }
    }
}
