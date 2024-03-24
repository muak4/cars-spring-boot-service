package com.usman.carswebservice.controllers.api;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@WebMvcTest(controllers = HealthCheckController.class)
@ExtendWith(MockitoExtension.class)
@AutoConfigureMockMvc(addFilters = false)
@DisplayName("Unit tests for HealthCheckController")
class HealthCheckControllerTest {
    @Autowired
    private MockMvc mockMvc;

    @Test
    @DisplayName("Check HealthResponse")
    void checkHealth_success() throws Exception {

        mockMvc.perform(
                get("/api/health/")
                )
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(content().string("OK!"));
    }
}