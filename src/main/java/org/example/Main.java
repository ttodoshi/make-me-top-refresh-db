package org.example;

import org.example.db.DbList;
import org.example.steps.DbSteps;

import java.io.IOException;
import java.util.Arrays;

public class Main {
    public static void main(String[] args) {
        DbSteps dbSteps = new DbSteps();
        Arrays.stream(DbList.values())
                .forEach(value -> {
                    try {
                        dbSteps.refillDB(value);
                    } catch (IOException e) {
                        throw new RuntimeException(e);
                    }
                });
    }
}

