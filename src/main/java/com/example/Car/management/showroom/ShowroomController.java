package com.example.Car.management.showroom;

import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.client.RestTemplate;
import org.springframework.web.bind.annotation.GetMapping;
//import java.util.List;

@Controller
public class ShowroomController {

    @GetMapping("showroom")
    public String gotoShowroom() {

        // Return the view name
        return "Home";
    }
}
