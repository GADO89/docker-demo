package com.spring.docker.dockerdemo.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class Controller {

    @Value("${name}")
    private String name;
    @Value("${age}")
    private String age;
    @GetMapping("/getMessage")
    public String getMessage(){
        return "Hi Student "+name+" with age "+age;
    }
}
