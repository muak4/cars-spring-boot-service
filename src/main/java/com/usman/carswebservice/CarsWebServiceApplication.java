package com.usman.carswebservice;

import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.info.Info;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@OpenAPIDefinition(info = @Info(title = "Cars Web Service", version = "1.0", description = "Spring Boot APIs For Car Backend Service"))
public class CarsWebServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(CarsWebServiceApplication.class, args);
	}

}
