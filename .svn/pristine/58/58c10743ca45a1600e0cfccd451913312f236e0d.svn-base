package com.fcz;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;

@EntityScan(basePackages= {"com.fcz.entity"})
@MapperScan(basePackages= {"com.fcz.mapper"})
@ComponentScan(basePackages={"com.fcz.*"}) 
@SpringBootApplication
public class ManageApplication {
	public static void main(String[] args) {
		SpringApplication.run(ManageApplication.class, args);
	}
}
