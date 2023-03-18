package datamatiker23.webhuskapp.Controller;

import datamatiker23.webhuskapp.Controller.Entities.Person;
import datamatiker23.webhuskapp.Model.Facade;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Map;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Map<String, Person> personMap = Facade.getAllPersons();

        boolean servletloggedIn = true;
        String name = request.getParameter("name");
        String password = request.getParameter("password");

        System.out.println(name);
        System.out.println(password);


        if (request.getSession().getAttribute("loggedin") == null) {
            request.getSession().setAttribute("loggedin", "false");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }


        if ((request.getSession().getAttribute("loggedin")) == "false") {
            servletloggedIn = false;

        }

        if (!servletloggedIn) {
            if (!personMap.containsKey(name)) {
                request.getSession().setAttribute("msg", "Username or password is incorrect!");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }

            if (personMap.containsKey(name)) {
                if (personMap.get(name).getPassword().equals(password)) {
                    request.getSession().setAttribute("user", personMap.get(name));
                    request.getSession().setAttribute("loggedin", "true");
                    request.getRequestDispatcher("WEB-INF/loggedIn.jsp").forward(request, response);
                }
            }
        }



        request.getRequestDispatcher("hej.jsp").forward(request, response);



    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }



}
