package com.usman.carswebservice.helpers;

import com.usman.carswebservice.utils.Helpers;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

public class HelpersTest {

    @Test
    void shouldCapitalizeString() {
        assertEquals("Electric", Helpers.capitalizeIfNotNull("elecTRIc"));
    }

    @Test
    void shouldCapitalizeSpaceSeparatedString() {
        assertEquals("All Wheels", Helpers.capitalizeIfNotNull("all wheels"));
        assertEquals("2 Wheels", Helpers.capitalizeIfNotNull("2 wHEEls"));
    }

    @Test
    void shouldReturnNull() {
        assertNull(Helpers.capitalizeIfNotNull(null));
    }

    @Test
    void shouldReturnEmptyString() {
        assertSame("", Helpers.capitalizeIfNotNull(""));
    }
}
