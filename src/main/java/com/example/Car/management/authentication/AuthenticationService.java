package com.example.Car.management.authentication;

import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {

    // Method to authenticate username and password
    public boolean authenticate(String username, String password) {
        boolean isValidUsername = username.equalsIgnoreCase("Rahulbhatia");
        boolean isValidPassword = password.equals("dummy");
        return isValidUsername && isValidPassword;
    }
}
