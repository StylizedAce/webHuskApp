package datamatiker23.webhuskapp.Controller;

import datamatiker23.webhuskapp.Controller.Entities.Person;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.*;

public class AppStart implements ServletContextListener {

    private static Map<String, Person> personMap;

    @Override
    public void contextInitialized(ServletContextEvent sce) {
       // ServletContextListener.super.contextInitialized(sce);
        List<Person> personList = new ArrayList<>();

        Person person = new Person("Ace", "123", "Sylph, art, piano");
        Person person1 = new Person("Daniel", "123", "Nokia phone, smartphone, gammeldags hjemmetelefon");
        Person person2 = new Person("Nik", "123", "Bamse, is, pude");
        Person person3 = new Person("Gabe", "123", "Sylph, art, piano");

        personMap = new TreeMap<>();

        personList.add(person);
        personList.add(person1);
        personList.add(person2);
        personList.add(person3);

        for(Person p: personList){
            personMap.put(p.getName(), p);
        }


    }


    public static Map<String, Person> getPersonMap(){
        return personMap;
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        ServletContextListener.super.contextDestroyed(sce);
    }
}
