package com.usman.carswebservice.services;

import com.usman.carswebservice.models.Car;
import com.usman.carswebservice.repositories.CarRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.HttpStatus;
import org.springframework.web.server.ResponseStatusException;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static com.usman.carswebservice.utils.Constants.ERROR_INVALID_CAR;
import static com.usman.carswebservice.utils.Constants.ERROR_RETRIEVING_CARS;
import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

@WebMvcTest(controllers = CarService.class)
@ExtendWith(MockitoExtension.class)
@AutoConfigureMockMvc(addFilters = false)
@DisplayName("Unit tests for CarService")
class CarServiceTest {

    @InjectMocks
    private CarService carService;

    @MockBean
    private CarRepository carRepository;

    private List<Car> cars = new ArrayList<>();

    @BeforeEach
    public void setup() {
        Car car1 = new Car(21L, "Tesla 3", "Tesla", 2022, "White",
                "Auto", "Electric", "Battery", 200, 1500,
                1800, 4500, 150, "Sedan", "Electric"
        );
        Car car2 = new Car(76L, "Civic", "Honda", 2020, "Red",
                "Manual", "Petrol", "VVTI", 150, 1400,
                1700, 4600, 160, "Sedan", "2 Wheels"
        );
        cars.add(car1);
        cars.add(car2);
    }

    @Test
    @DisplayName("GetAllCars - Success")
    void getAllCarsSuccess() {
        when(carRepository.findAll()).thenReturn(cars);

        List<Car> carsList = carService.getAllCars();
        assertNotNull(carsList);
        assertEquals(2, carsList.size());
        assertEquals(carsList.get(0).getId(), 21L);
        assertEquals(carsList.get(1).getId(), 76L);
        verify(carRepository, times(1)).findAll();
    }

    @Test
    @DisplayName("GetAllCars - Exception")
    void getAllCarsException() {
        when(carRepository.findAll()).then(invocation -> {
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, ERROR_RETRIEVING_CARS);
        });
        ResponseStatusException exception = assertThrows(ResponseStatusException.class, () -> carService.getAllCars());
        assertNotNull(exception);
        assertEquals(HttpStatus.INTERNAL_SERVER_ERROR, exception.getStatusCode());
        assertEquals(ERROR_RETRIEVING_CARS, exception.getReason());
        verify(carRepository, times(1)).findAll();
    }

    @Test
    @DisplayName("GetCarById - Success")
    void getCarByIdSuccess() {
        when(carRepository.findById(anyLong())).thenReturn(Optional.ofNullable(cars.get(1)));

        Car carById = carService.getCarById(76L);
        assertNotNull(carById);
        assertEquals(carById.getId(), 76L);
        verify(carRepository, times(1)).findById(76L);
    }

    @Test
    @DisplayName("GetCarById - Exception")
    void getCarByIdException() {
        when(carRepository.findById(anyLong())).then(invocation -> {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, ERROR_INVALID_CAR);
        });
        ResponseStatusException exception = assertThrows(
                ResponseStatusException.class, () -> carService.getCarById(76L));

        assertNotNull(exception);
        assertEquals(HttpStatus.NOT_FOUND, exception.getStatusCode());
        assertEquals(ERROR_INVALID_CAR, exception.getReason());
        verify(carRepository, times(1)).findById(76L);
    }

}