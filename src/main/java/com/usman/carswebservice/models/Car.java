package com.usman.carswebservice.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity
@Table(name = "cars")
public class Car {
    @Id
    @SequenceGenerator(
            name = "car_sequence",
            sequenceName = "car_sequence",
            allocationSize = 1
    )
    @GeneratedValue(
            strategy = GenerationType.SEQUENCE,
            generator = "car_sequence"
    )
    private Long id;
    @Column(name = "model")
    private String model;
    @Column(name = "manufacturer")
    private String manufacturer;
    @Column(name = "year")
    private Integer year;
    @Column(name = "color")
    private String color;
    @Column(name = "transmission")
    private String transmission;
    @Column(name = "fuel_type")
    private String fuelType;
    @Column(name = "engine_type")
    private String engineType;
    @Column(name = "horsepower")
    private Integer horsepower;
    @Column(name = "height")
    private Integer height;
    @Column(name = "width")
    private Integer width;
    @Column(name = "length")
    private Integer length;
    @Column(name = "ground_clearance")
    private Integer groundClearance;
    @Column(name = "body_type")
    private String bodyType;
    @Column(name = "car_type")
    private String carType;

    public Car(
            String model,
            String manufacturer,
            Integer year,
            String color,
            String transmission,
            String fuelType,
            String engineType,
            Integer horsepower,
            Integer height,
            Integer width,
            Integer length,
            Integer groundClearance,
            String bodyType,
            String carType
    ) {
        this.model = model;
        this.manufacturer = manufacturer;
        this.year = year;
        this.color = color;
        this.transmission = transmission;
        this.fuelType = fuelType;
        this.engineType = engineType;
        this.horsepower = horsepower;
        this.height = height;
        this.width = width;
        this.length = length;
        this.groundClearance = groundClearance;
        this.bodyType = bodyType;
        this.carType = carType;
    }
}
