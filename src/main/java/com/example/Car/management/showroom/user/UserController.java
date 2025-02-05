package com.example.Car.management.showroom.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.Car.management.showroom.audi.Audi;
import com.example.Car.management.showroom.audi.AudiService;

//@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private AudiService carService;

    @GetMapping("/login")
    public String showLoginPage() {
        return "user-login";
    }

    @PostMapping("/login")
    public String loginUser(@RequestParam String username, @RequestParam String password, Model model) {
        User user = userService.loginUser(username, password);
        if (user != null) {
            model.addAttribute("user", user);
            return "redirect:/user/home";
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "user-login";
        }
    }

    @GetMapping("/register")
    public String showRegisterPage() {
        return "user-register";
    }

    @PostMapping("/register")
    public String registerUser(User user) {
        userService.registerUser(user);
        return "redirect:/user/login";
    }

    @GetMapping("/home")
    public String userHomePage() {
        return "user-home";
    }

    @GetMapping("/{showroom}")
    public String viewCars(@PathVariable String showroom, Model model) {
        model.addAttribute("cars", carService.getCarsByShowroom(showroom));
        return "user-" + showroom;
    }

    @GetMapping("/car/purchase")
    public String purchaseCar(@RequestParam Long id, Model model) {
        Audi car = carService.getCarById(id);
        model.addAttribute("car", car);
        return "car-purchase";
    }

    @PostMapping("/car/purchase")
    public String completePurchase(@RequestParam Long carId, @RequestParam String username) {
        // Logic to mark car as purchased
        return "redirect:/user/home";
    }

    @GetMapping("/car/rent")
    public String rentCar(@RequestParam Long id, Model model) {
        Audi car = carService.getCarById(id);
        model.addAttribute("car", car);
        return "car-rent";
    }

    @PostMapping("/car/rent")
    public String completeRent(@RequestParam Long carId, @RequestParam String username, @RequestParam int rentalPeriod) {
        // Logic to handle rental
        return "redirect:/user/home";
    }
}
