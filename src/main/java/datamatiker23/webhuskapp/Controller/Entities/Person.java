package datamatiker23.webhuskapp.Controller.Entities;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Person {


    List<String> stringArrayList;

    String name;
    String password;


    public Person(String name, String password, String... s) {
        this.name = name;
        this.password = password;
        this.stringArrayList = Arrays.asList(s);

    }


    public String getName() {
        return name;
    }


    public String getPassword() {
        return password;
    }

    public List<String> getStringArrayList() {
        return stringArrayList;
    }
}
