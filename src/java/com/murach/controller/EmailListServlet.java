package com.murach.controller;

import com.murach.data.UserDB;
import com.murach.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/emailList")
public class EmailListServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getParameter("action");
        if (action == null) {
            action = "join"; // action mặc định
        }
        
        String url = "/index.html";
        
        if (action.equals("join")) {
            url = "/index.html"; // Hiển thị form đăng ký
        }
        
        // Forward đến trang view
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";
        }
        
        String url = "/index.html";
        
        if (action.equals("add")) {
            // Lấy dữ liệu từ form
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            
            // Tạo User object
            User user = new User();
            user.setFirstName(firstName);
            user.setLastName(lastName);
            user.setEmail(email);
            
            // Validate dữ liệu
            String message = "";
            if (firstName == null || firstName.isEmpty() ||
                lastName == null || lastName.isEmpty() ||
                email == null || email.isEmpty()) {
                message = "Please fill out all fields.";
                url = "/index.html";
            } else {
                // Lưu user vào database
                int result = UserDB.insert(user);
                if (result > 0) {
                    // Thành công - chuyển đến trang cảm ơn
                    request.setAttribute("user", user);
                    url = "/thanks.jsp";
                } else {
                    // Thất bại
                    message = "An error occurred. Please try again.";
                    url = "/index.html";
                }
            }
            
            request.setAttribute("user", user);
            request.setAttribute("message", message);
        }
        
        // Forward đến view
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}