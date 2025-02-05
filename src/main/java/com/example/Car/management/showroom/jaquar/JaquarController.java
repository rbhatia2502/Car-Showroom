package com.example.Car.management.showroom.jaquar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class JaquarController {

    @Autowired
    private JaquarService jaquarService;

    @GetMapping("/jaquar")
    public String showJaquarCars(Model model) {
        List<Jaquar> cars = jaquarService.getAllCars();
        model.addAttribute("cars", cars);
        return "list-jaquar";
    }

    @GetMapping("/add-jaquar")
    public String addJaquarCar(Model model, @RequestParam(required = false) Long id) {
        if (id != null) {
            Jaquar car = jaquarService.getCarById(id);
            if (car != null) {
                model.addAttribute("car", car); // Pass the existing car details for editing
            } else {
                model.addAttribute("error", "Car not found for editing.");
            }
        }
        return "add-jaquar";
    }

    @PostMapping("/add-jaquar")
    public String saveOrUpdateJaquarCar(
            @RequestParam(required = false) Long id,
            @RequestParam String model,
            @RequestParam String color,
            @RequestParam Double price) {

        Jaquar car;
        if (id != null) {
            car = jaquarService.getCarById(id);
            if (car != null) {
                car.setModel(model);
                car.setColor(color);
                car.setPrice(price);
            } else {
                throw new RuntimeException("Car with ID " + id + " not found!");
            }
        } else {
            car = new Jaquar(null, model, color, price);
        }

        jaquarService.saveCar(car);
        return "redirect:/jaquar";
    }

    @GetMapping("/delete-jaquar/{id}")
    public String deleteJaquarCar(@PathVariable Long id) {
        jaquarService.deleteCarById(id);
        return "redirect:/jaquar";
    }
}
