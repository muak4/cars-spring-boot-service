package com.usman.carswebservice.repositories;

import com.usman.carswebservice.models.Car;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface CarRepository extends JpaRepository<Car, Long> {
    @Query("SELECT c FROM Car c WHERE " +
            "(:model is null or c.model = :model) and " +
            "(:manufacturer is null or c.manufacturer = :manufacturer) and " +
            "(:modelYear is null or c.modelYear = :modelYear) and " +
            "(:fuelType is null or c.fuelType = :fuelType) and " +
            "(:carType is null or c.carType = :carType)")
    Page<Car> searchCars(
            String model,
            String manufacturer,
            Integer modelYear,
            String fuelType,
            String carType,
            Pageable pageable);

}
