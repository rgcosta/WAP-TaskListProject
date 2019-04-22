package com.mum.task.Controllers;

import com.mum.task.Models.Task;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.chrono.ChronoLocalDate;
import java.util.*;

@WebServlet(name = "ServletExample", urlPatterns = "/task")
public class ServletExample extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //harcode Tasks
        List<Task> tasks = Arrays.asList(
                new Task(1, "Task 1 Description", LocalDate.of(2019, 04, 21), "High", "Work"),
                new Task(2, "Task 2 Description", LocalDate.of(2019, 04, 22), "Normal", "Work"),
                new Task(312, "Task 3 Description", LocalDate.of(2019, 04, 23), "Low", "Personal"),
                new Task(40, "Task 4 Description", LocalDate.of(2019, 01, 20), "Normal", "Personal")
        );

        response.setContentType("text/html");
        request.setAttribute("tasks", tasks.toArray());
        request.getRequestDispatcher("task.jsp").forward(request,response);
    }
}
