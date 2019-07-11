package com.js.car;

import java.util.ArrayList;
import java.util.List;

public class CarListGenerator {
    public static List<Car> generateList(){
        List<Car> list = new ArrayList<>();

        list.add(new Car("AUDI","A4","2013",false));
        list.add(new Car("AUDI","A7","2015",false));
        list.add(new Car("MERCEDES","CLA","2017",false));
        list.add(new Car("PEUGEOT","307","2015",false));
        list.add(new Car("FIAT","126p","1989",false));

        return list;
    }
}
