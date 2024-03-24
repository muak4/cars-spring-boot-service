package com.usman.carswebservice.utils;

import org.springframework.util.StringUtils;

public class Helpers {

    public static String capitalizeIfNotNull(String input) {
        if (input == null || input.isEmpty()) {
            return input;
        }

        String[] words = input.split(" ");

        StringBuilder result = new StringBuilder();
        for (int i = 0; i < words.length; i++) {
            if (i > 0) {
                result.append(" "); // Add space before appending next word
            }
            result.append(Character.toUpperCase(words[i].charAt(0)))
                    .append(words[i].substring(1).toLowerCase());
        }

        return result.toString();
    }

}
