package com.example.Car.management.login;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.Car.management.authentication.AuthenticationService;


@Controller
public class LoginController {

    private final AuthenticationService authenticate;

    public LoginController(AuthenticationService authenticate) {
        this.authenticate = authenticate;
    }

    // Get method to show the login form
    @GetMapping("login")
    public String loginPage() {
        return "login"; // This refers to /WEB-INF/jsp/login.jsp
    }

    // Post method to process login
    @PostMapping("login")
    public String login(@RequestParam("username") String username,
                        @RequestParam("password") String password,
                        Model model) {
        if (authenticate.authenticate(username, password)) {
            return "Welcome"; // Make sure this view (welcome.jsp) exists
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "login"; // This will return /WEB-INF/jsp/login.jsp again
        }
    }
}

