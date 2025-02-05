package com.example.Car.management.showroom.bmw;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class BMWController {

    @Autowired
    private BMWService bmwService;

    @GetMapping("/bmw")
    public String showBMWCars(Model model) {
        List<BMW> cars = bmwService.getAllCars();
        model.addAttribute("cars", cars);
        return "list-bmw";
    }

    @GetMapping("/add-bmw")
    public String addBMWCar(Model model, @RequestParam(required = false) Long id) {
        if (id != null) {
            BMW car = bmwService.getCarById(id);
            if (car != null) {
                model.addAttribute("car", car); // Pass the existing car details for editing
            } else {
                model.addAttribute("error", "Car not found for editing.");
            }
        }
        return "add-bmw";
    }

    @PostMapping("/add-bmw")
    public String saveOrUpdateBMWCar(
            @RequestParam(required = false) Long id,
            @RequestParam String model,
            @RequestParam String color,
            @RequestParam Double price) {

        BMW car;
        if (id != null) {
            car = bmwService.getCarById(id);
            if (car != null) {
                car.setModel(model);
                car.setColor(color);
                car.setPrice(price);
            } else {
                throw new RuntimeException("Car with ID " + id + " not found!");
            }
        } else {
            car = new BMW(null, model, color, price);
        }

        bmwService.saveCar(car);
        return "redirect:/bmw";
    }

    @GetMapping("/delete-bmw/{id}")
    public String deleteBMWCar(@PathVariable Long id) {
        bmwService.deleteCarById(id);
        return "redirect:/bmw";
    }
}
