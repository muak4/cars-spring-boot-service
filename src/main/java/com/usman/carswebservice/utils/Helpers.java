package com.usman.carswebservice.utils;

import org.springframework.util.StringUtils;

public class Helpers {

    public static String capitalizeIfNotNull(String input) {
        if (input != null) {
            return StringUtils.capitalize(input.toLowerCase());
        }
        return null;
    }

}
