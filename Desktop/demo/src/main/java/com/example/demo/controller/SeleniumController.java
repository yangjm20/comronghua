package com.example.demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("selenium")
public class SeleniumController {

    @RequestMapping(value = "hello",method = RequestMethod.GET)
    public String helloWord2(String id){
        return "get hello word"+id;
    }
}
