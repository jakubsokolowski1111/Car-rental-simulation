package com.js.car;

import java.util.UUID;

public class Car {
    private String id = UUID.randomUUID().toString();
    private String mark;
    private String model;
    private String yearOfProduction;
    private boolean isRented;

    public Car( String mark, String model, String yearOfProduction, boolean isRented) {
        this.mark = mark;
        this.model = model;
        this.yearOfProduction = yearOfProduction;
        this.isRented = isRented;
    }

    public String getId() {
        return id;
    }


    public String getMark() {
        return mark;
    }

    public void setMark(String mark) {
        this.mark = mark;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getYearOfProduction() {
        return yearOfProduction;
    }

    public void setYearOfProduction(String yearOfProduction) {
        this.yearOfProduction = yearOfProduction;
    }

    public boolean isRented() {
        return isRented;
    }

    public void setRented(boolean rented) {
        isRented = rented;
    }

    @Override
    public String toString() {
        return "id = " + id +
                ", mark = " + mark +
                ", model= " + model +
                ", yearOfProduction = " + yearOfProduction +
                ", isRented = " + isRented;
    }
}
