package com.example.demo.listener;

import com.example.demo.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.boot.context.event.ApplicationStartingEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.stereotype.Component;


@Component
public class MyListener implements ApplicationListener<ApplicationReadyEvent> {

    @Autowired
    private UserServiceImpl userServiceImpl;


    @Override
    public void onApplicationEvent(ApplicationReadyEvent applicationReadyEvent) {
        System.out.println(userServiceImpl.getUser().get(0).getName());
    }
}
