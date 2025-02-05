package com.example.Car.management.showroom.audi;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class AudiController {

    @Autowired
    private AudiService audiService;

    @GetMapping("audi")
    public String showAudiCars(Model model) {
        List<Audi> cars = audiService.getAllCars();
        model.addAttribute("cars", cars);
        return "list-audi";
    }

    @GetMapping("add-car")
    public String addAudiCar(Model model, @RequestParam(required = false) Long id) {
        if (id != null) {
            Audi car = audiService.getCarById(id);
            if (car != null) {
                model.addAttribute("car", car); // Pass the existing car details for editing
            } else {
                model.addAttribute("error", "Car not found for editing.");
            }
        }
        return "add-cars";
    }

    @PostMapping("/add-car")
    public String saveOrUpdateAudiCar(
            @RequestParam(required = false) Long id,
            @RequestParam String model,
            @RequestParam String color,
            @RequestParam Double price) {

        Audi car;
        if (id != null) {
            // Updating existing car
            car = audiService.getCarById(id);
            if (car != null) {
                car.setModel(model);
                car.setColor(color);
                car.setPrice(price);
            } else {
                throw new RuntimeException("Car with ID " + id + " not found!");
            }
        } else {
            // Adding a new car
            car = new Audi(null, model, color, price);
        }

        audiService.saveCar(car);
        return "redirect:/audi";
    }

    @GetMapping("/delete/{id}")
    public String deleteAudiCar(@PathVariable Long id) {
        audiService.deleteCarById(id);
        return "redirect:/audi";
    }
  
       @GetMapping("/update/{id}")
        public String updateCarForm(@PathVariable Long id, Model model) {
            // Fetch the car by ID
            Audi car = audiService.getCarById(id);
            if (car == null) {
                throw new RuntimeException("Car with ID " + id + " not found!");
            }
            
            // Add the car to the model for rendering the form
            model.addAttribute("car", car);
            return "add-cars"; // Redirects to add-cars.jsp with the car details
        }
    }

