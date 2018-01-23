package com.yanghua.gongxiang;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
@MapperScan("com.yanghua.gongxiang.dao")
@SpringBootApplication
/**@author sunzhen*/
public class Application {

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}
}
