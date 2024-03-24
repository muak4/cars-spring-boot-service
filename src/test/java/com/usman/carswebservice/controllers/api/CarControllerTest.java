package com.usman.carswebservice.controllers.api;

import com.usman.carswebservice.models.Car;
import com.usman.carswebservice.services.CarService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import static org.hamcrest.Matchers.*;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@WebMvcTest(controllers = CarController.class)
@ExtendWith(MockitoExtension.class)
@AutoConfigureMockMvc(addFilters = false)
@DisplayName("Unit tests for CarController")
class CarControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private CarService carService;

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
    @DisplayName("GET Car List - Success")
    void getCarListSuccess() throws Exception {
        when(carService.getAllCars()).thenReturn(cars);
        mockMvc.perform(
                get("/api/cars")
                        .contentType(MediaType.APPLICATION_JSON)
                ).andDo(print())
                .andExpect(status().isOk())
                .andExpect(jsonPath("$", isA(List.class)))
                .andExpect(jsonPath("$", hasSize(2)))
                .andExpect(jsonPath("$.[*].id").exists())
                .andExpect(jsonPath("$[0].model", is("Tesla 3")))
                .andExpect(jsonPath("$[1].model", is("Civic")));
    }

    @Test
    @DisplayName("GET Car List - Empty Success")
    void getEmptyListSuccess() throws Exception {
        when(carService.getAllCars()).thenReturn(Collections.emptyList());
        mockMvc.perform(
                get("/api/cars")
                        .contentType(MediaType.APPLICATION_JSON)
                )
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(jsonPath("$").isArray())
                .andExpect(jsonPath("$", hasSize(0)));
    }

    @Test
    @DisplayName("GET Car By Id - Success")
    void getCarByIdSuccess() throws Exception {
        Car carById = cars.get(1);  // Id = 76L
        when(carService.getCarById(carById.getId())).thenReturn(carById);
        mockMvc.perform(
                get("/api/cars/76")
                        .contentType(MediaType.APPLICATION_JSON)
                ).andDo(print())
                .andExpect(status().isOk())
                .andExpect(jsonPath("$", isA(Map.class)))
                .andExpect(jsonPath("$.id", is(76)))
                .andExpect(jsonPath("$.model", is("Civic")));
    }

    @Test
    @DisplayName("Search Cars - Success")
    void searchCar() throws Exception {
        Page<Car> page = new PageImpl<>(Collections.singletonList(cars.get(1)));

        when(carService.searchCars(
                "civic",
                null,
                null,
                null,
                null,
                PageRequest.of(0, 50, Sort.by("id"))))
                .thenReturn(page);

        mockMvc.perform(get("/api/cars/search")
                        .param("model", "civic")
                        .param("page", "0")
                        .param("size", "50")
                        .param("sortBy", "id"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.content").isArray())
                .andExpect(jsonPath("$.content", hasSize(1)))
                .andExpect(jsonPath("$.totalPages").value(1))
                .andExpect(jsonPath("$.totalElements").value(1))
                .andExpect(jsonPath("$.content[0].id").value(76))
                .andExpect(jsonPath("$.content[0].model").value("Civic"));
    }

}