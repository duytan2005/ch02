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

        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        if (action == null) {
            action = "join"; 
        }

        String url = "/index.jsp"; // default

        if (action.equals("join")) {
            url = "/join.jsp";   // quay lại form đăng ký
        }

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        if (action == null) {
            action = "join";
        }

        String url = "/index.jsp";

        if (action.equals("add")) {
            // Lấy dữ liệu từ form
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            String dob = request.getParameter("dob");
            String source = request.getParameter("source");
            String offers = request.getParameter("offers"); 
            String emailAnnouncements = request.getParameter("emailAnnouncements"); 
            String contactMethod = request.getParameter("contactMethod");

            // Tạo User object
            User user = new User();
            user.setFirstName(firstName);
            user.setLastName(lastName);
            user.setEmail(email);
            user.setDob(dob);
            user.setSource(source);
            user.setOffers(offers != null ? "yes" : "no");
            user.setEmailAnnouncements(emailAnnouncements != null ? "yes" : "no");
            user.setContactMethod(contactMethod);

            // Validate dữ liệu
            String message = "";
            if (firstName == null || firstName.isEmpty() ||
                lastName == null || lastName.isEmpty() ||
                email == null || email.isEmpty()) {
                
                message = "Vui lòng nhập đầy đủ thông tin.";
                url = "/join.jsp";
            } else {
                // Lưu user vào database (nếu cần)
                int result = UserDB.insert(user);
                if (result > 0) {
                    request.setAttribute("user", user);
                    url = "/thanks.jsp";
                } else {
                    message = "Có lỗi xảy ra. Vui lòng thử lại.";
                    url = "/join.jsp";
                }
            }

            request.setAttribute("user", user);
            request.setAttribute("message", message);
        }

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}
