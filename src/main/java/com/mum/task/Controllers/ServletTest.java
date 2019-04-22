package com.mum.task.Controllers;

import com.mum.task.Models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletTest", urlPatterns = "/account")
public class ServletTest extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User user = new User(1, "Michael Scofield", "mail@break.com", "5552223334","123",
                "Prison Break Avenue", "00001", "999991", "dev");

        response.setContentType("text/html");
        request.setAttribute("user", user);
        request.getRequestDispatcher("account.jsp").forward(request, response);
    }
}
