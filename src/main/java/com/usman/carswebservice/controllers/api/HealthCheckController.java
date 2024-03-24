package com.usman.carswebservice.controllers.api;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
public class HealthCheckController {

    @GetMapping("api/health/")
    public ResponseEntity<String> healthCheck() {
        return ResponseEntity.ok("OK!");
    }

}
