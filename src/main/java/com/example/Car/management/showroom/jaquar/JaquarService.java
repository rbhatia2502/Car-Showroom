package com.example.Car.management.showroom.jaquar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JaquarService {

    @Autowired
    private JaquarRepository jaquarRepository;

    public List<Jaquar> getAllCars() {
        return jaquarRepository.findAll();
    }

    public void saveCar(Jaquar car) {
        jaquarRepository.save(car);
    }

    public Jaquar getCarById(Long id) {
        return jaquarRepository.findById(id).orElse(null);
    }

    public void deleteCarById(Long id) {
        if (jaquarRepository.existsById(id)) {
            jaquarRepository.deleteById(id);
        } else {
            throw new RuntimeException("Car with ID " + id + " not found!");
        }
    }
}
