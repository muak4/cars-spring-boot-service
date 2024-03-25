package com.usman.carswebservice;

import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.info.Info;
import io.swagger.v3.oas.models.Components;
import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.security.SecurityRequirement;
import io.swagger.v3.oas.models.security.SecurityScheme;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
@OpenAPIDefinition(info = @Info(title = "Cars Web Service", version = "1.0", description = "Spring Boot APIs For Car Backend Service"))
public class CarsWebServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(CarsWebServiceApplication.class, args);
	}

	@Bean
	public OpenAPI openAPI() {
		String authName = "Bearer Authentication";
		return new OpenAPI()
				.addSecurityItem(new SecurityRequirement().addList(authName))
				.components(new Components().addSecuritySchemes(authName, createAPIKeyScheme()));
	}

	private SecurityScheme createAPIKeyScheme() {
		return new SecurityScheme().type(SecurityScheme.Type.HTTP)
				.bearerFormat("JWT")
				.scheme("bearer");
	}
}
