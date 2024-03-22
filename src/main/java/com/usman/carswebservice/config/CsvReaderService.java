package com.usman.carswebservice.config;


import com.usman.carswebservice.models.Car;
import com.usman.carswebservice.repositories.CarRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Service;
import org.springframework.util.ResourceUtils;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

@Service
public class CsvReaderService implements CommandLineRunner {

    @Autowired
    private CarRepository carRepository;

    @Override
    public void run(String... args) throws Exception {
        String csvFilePath = "data.csv";
        readCsvFile(csvFilePath);
    }

    private void readCsvFile(String csvFilePath) {
        try (BufferedReader br = new BufferedReader(new FileReader(ResourceUtils.getFile(csvFilePath)))) {
            String line;
            boolean firstLine = true;
            String cvsSplitBy = ",";
            while ((line = br.readLine()) != null) {

                if (firstLine) {
                    firstLine = false;
                    continue; // Skip processing the first line
                }
                String[] data = line.split(cvsSplitBy);


                String model = data[0];
                String manufacturer = data[1];
                Integer year = Integer.parseInt(data[2]);
                String color = data[3];
                String transmission = data[4];
                String fuelType = data[5];
                String engineType = data[6];
                Integer horsepower = Integer.parseInt(data[7]);
                Integer height = Integer.parseInt(data[8]);
                Integer width = Integer.parseInt(data[9]);
                Integer length = Integer.parseInt(data[10]);
                Integer groundClearance = Integer.parseInt(data[11]);
                String bodyType = data[12];
                String carType = data[13];

                Car car = new Car(
                        model,
                        manufacturer,
                        year,
                        color,
                        transmission,
                        fuelType,
                        engineType,
                        horsepower,
                        height,
                        width,
                        length,
                        groundClearance,
                        bodyType,
                        carType
                );

                carRepository.save(car);

            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

