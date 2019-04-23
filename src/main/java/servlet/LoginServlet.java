package servlet;

import dao.UserDataAccess;
import model.User;
import model.UserGlobal;

import javax.servlet.RequestDispatcher;

@javax.servlet.annotation.WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        User user=null;
        RequestDispatcher rd=null;
        String email=request.getParameter("email").trim();
        String password=request.getParameter("password").trim();
        try{
            user= UserDataAccess.getUserByEmail(email);
        }
        catch (Exception e){
            e.printStackTrace();
        }

        if (user==null){
            request.setAttribute("message","No User Found");
            rd=request.getRequestDispatcher("/Login.jsp");

        }
        else {
            if(user.getEmail().trim().equals(email)&&user.getPassword().trim().equals(password)){

                if(user.getRole().toLowerCase().equals("manager")){
                    UserGlobal.userId=user.getId();
                    UserGlobal.userName=user.getName();
                    UserGlobal.userRole=user.getRole();
                request.setAttribute("allUsers", UserDataAccess.getAllUsers());
                rd=request.getRequestDispatcher("/User.jsp");}

                else if(user.getRole().toLowerCase().equals("developer")){
                    request.setAttribute("userValue",user);
                    rd=request.getRequestDispatcher("/UserProfile.jsp");
                }

            }
            else {
                request.setAttribute("message","No User Found");
                rd=request.getRequestDispatcher("/Login.jsp");
            }
        }
        rd.forward(request,response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {

    }
}
