package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.autoconfigure.mongo.MongoAutoConfiguration;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
@RestController
@SpringBootApplication(exclude = MongoAutoConfiguration.class)
//springboot自动配置了支持mongodb。在启动springboot时会自动实例化一个mongo实例，需要禁用自动配置 ，
@EnableAutoConfiguration(exclude={DataSourceAutoConfiguration.class})
//阻止spring boot自动注入dataSource bean

//@SpringBootApplication
public class AgricEquipmentApplication {
	 @RequestMapping("/")  
     public String hello(){  
       return"Hello world!";  
     } 
	public static void main(String[] args) {
		SpringApplication.run(AgricEquipmentApplication.class, args);
	}
}
