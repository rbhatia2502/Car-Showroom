package com.example.Car.management.showroom.audi;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AudiService {

    @Autowired
    private AudiRepository audiRepository;

    public List<Audi> getAllCars() {
        return audiRepository.findAll();
    }

	public void saveCar(Audi car) {
		// TODO Auto-generated method stub
			audiRepository.save(car);
		
	}
	public Audi getCarById(Long id) {
	    return audiRepository.findById(id)
	            .orElse(null); // Return null if car not found
	}

	  public void deleteCarById(Long id) {
	        if (audiRepository.existsById(id)) {
	            audiRepository.deleteById(id);
	        } else {
	            throw new RuntimeException("Car with ID " + id + " not found!");
	        }
	    }
	 
}
