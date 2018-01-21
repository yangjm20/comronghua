package com.example.demo;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.event.*;
import org.springframework.context.ApplicationEvent;
import org.springframework.context.ApplicationListener;

@Slf4j
@SpringBootApplication
public class DemoApplication {

    public static void main(String[] args) {
        SpringApplication application = new SpringApplication(DemoApplication.class);
        application.addListeners(new ApplicationListenerEnvironmentPrepared());
        application.addListeners(new ApplicationListenerFailed());
        application.addListeners(new ApplicationListenerPrepared());
        application.addListeners(new ApplicationListenerStarted());
        application.addListeners(new ApplicationListenerReadyEvent());

        application.run(args);

    }

}

class ApplicationListenerEnvironmentPrepared implements ApplicationListener<ApplicationEnvironmentPreparedEvent> {
    @Override
    public void onApplicationEvent(ApplicationEnvironmentPreparedEvent event) {
        System.out.println(getClass().getSimpleName());
        System.out.println("-----------------------------1-----------------------------");
    }
}

class ApplicationListenerFailed implements ApplicationListener<ApplicationFailedEvent> {
    @Override
    public void onApplicationEvent(ApplicationFailedEvent event) {
        System.out.println(getClass().getSimpleName());
        System.out.println("------------------------------2----------------------------");

    }

}

class ApplicationListenerPrepared implements ApplicationListener<ApplicationPreparedEvent> {
    @Override
    public void onApplicationEvent(ApplicationPreparedEvent event) {
        System.out.println(getClass().getSimpleName());
        System.out.println("----------------------------------3------------------------");

    }

}

class ApplicationListenerStarted implements ApplicationListener<ApplicationStartingEvent> {
    @Override
    public void onApplicationEvent(ApplicationStartingEvent event) {
        System.out.println(getClass().getSimpleName());
        System.out.println("------------------------------4----------------------------");

    }
}



class ApplicationListenerReadyEvent implements ApplicationListener<ApplicationReadyEvent> {

    @Override
    public void onApplicationEvent(ApplicationReadyEvent applicationReadyEvent) {
        System.out.println(getClass().getSimpleName());
        System.out.println("------------------------------5555555----------------------------");
    }
}






//applicationReadyEvent