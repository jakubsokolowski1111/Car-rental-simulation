package com.js.servlet;

import com.js.car.Car;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class DetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Car> list = (List<Car>) req.getSession().getAttribute("cars");

        String id = req.getParameter("id");

        for (Car car : list){
            if (car.getId().equals(id)){
                req.getSession().setAttribute("id",car.getId());
                req.getSession().setAttribute("model", car.getModel());
                RequestDispatcher requestDispatcher =req.getRequestDispatcher("details.jsp");
                requestDispatcher.forward(req,resp);
            }
        }

    }
}
