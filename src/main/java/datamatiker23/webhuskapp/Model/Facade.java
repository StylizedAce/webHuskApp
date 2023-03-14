package datamatiker23.webhuskapp.Model;

import datamatiker23.webhuskapp.Controller.AppStart;
import datamatiker23.webhuskapp.Controller.Entities.Person;

import java.util.Map;

public class Facade {

    public static Map<String, Person> getAllPersons() {
            return AppStart.getPersonMap();
    }




}
