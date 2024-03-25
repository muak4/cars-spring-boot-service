package com.usman.carswebservice.controllers.api;

import com.usman.carswebservice.models.Car;
import com.usman.carswebservice.services.CarService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@RestController
@RequestMapping(path = "api/cars")
public class CarController {

    @Autowired
    private CarService carService;

    @GetMapping
    public ResponseEntity<List<Car>> getCars() {
        log.info("Fetch all cars");
        return ResponseEntity.ok(carService.getAllCars());
    }

    @GetMapping("/{carId}")
    public ResponseEntity<Car> getCarById(@PathVariable(value ="carId") Long carId) {
        log.info("Fetch car with ID: " + carId);
        return ResponseEntity.ok(carService.getCarById(carId));
    }

    @GetMapping("/search")
    public ResponseEntity<Page<Car>> searchCar(
            @RequestParam(required = false) String model,
            @RequestParam(required = false) String manufacturer,
            @RequestParam(required = false) Integer modelYear,
            @RequestParam(required = false) String fuelType,
            @RequestParam(required = false) String carType,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "10") int size,
            @RequestParam(defaultValue = "id") String sortBy
    ) {
        log.info("Search for all cars against Parameters");
        Page<Car> cars = carService.searchCars(
                model, manufacturer, modelYear, fuelType, carType, page, size, sortBy);
        return ResponseEntity.ok(cars);
    }

}
