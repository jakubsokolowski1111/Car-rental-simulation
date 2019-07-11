package com.js.servlet;

import com.js.car.Car;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ReturnServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Car> list = (List<Car>) req.getSession().getAttribute("cars");

        String id = (String) req.getSession().getAttribute("id");
        boolean isChanged = false;
        for (Car car : list) {
            if (car.getId().equals(id)) {
                if (car.isRented()) {
                    car.setRented(false);
                    isChanged= true;
                    break;
                }
            }
        }

        if (isChanged){
            req.getSession().setAttribute("cars", list);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("returned.jsp");
            requestDispatcher.forward(req,resp);
        }else {
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("isNotRented.jsp");
            requestDispatcher.forward(req,resp);
        }
    }
}
