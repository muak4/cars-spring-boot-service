package com.usman.carswebservice.services;

import com.usman.carswebservice.models.Car;
import com.usman.carswebservice.repositories.CarRepository;
import lombok.Generated;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.Optional;

import static com.usman.carswebservice.utils.Constants.ERROR_INVALID_CAR;
import static com.usman.carswebservice.utils.Constants.ERROR_RETRIEVING_CARS;
import static com.usman.carswebservice.utils.Helpers.capitalizeIfNotNull;

@Service
@Slf4j
public class CarService {

    @Autowired
    private CarRepository carRepository;

    public List<Car> getAllCars() {
        try {
            return carRepository.findAll();
        } catch (Exception e) {
            log.error("Error occurred while retrieving cars: {}", e.getMessage(), e);
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, ERROR_RETRIEVING_CARS);
        }
    }

    public Car getCarById(Long carId) {
        Optional<Car> carById = carRepository.findById(carId);
        return carById.orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, ERROR_INVALID_CAR + carId));
    }

    @Generated
    public Page<Car> searchCars(
            String model,
            String manufacturer,
            Integer modelYear,
            String fuelType,
            String carType,
            int pageNum,
            int pageSize,
            String sortBy
    ) {
        try {
            model = capitalizeIfNotNull(model);
            manufacturer = capitalizeIfNotNull(manufacturer);
            fuelType = capitalizeIfNotNull(fuelType);
            carType = capitalizeIfNotNull(carType);

            Pageable pageRequest = PageRequest.of(pageNum, pageSize, Sort.by(sortBy));
            return carRepository.searchCars(model, manufacturer, modelYear, fuelType, carType, pageRequest);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, ERROR_RETRIEVING_CARS);
        }
    }

}
