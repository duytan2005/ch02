package com.murach.data;

import com.murach.model.User;
import java.io.*;
import java.util.*;

public class UserDB {
    
    // Phương thức để thêm user vào file (hoặc database)
    public static int insert(User user) {
        // Trong thực tế, bạn sẽ lưu vào database
        // Ở đây chúng ta chỉ mô phỏng việc lưu trữ
        
        try {
            // Có thể lưu vào file text hoặc database
            // Ví dụ lưu vào file
            String filePath = "C:/temp/users.txt"; // Thay đổi đường dẫn phù hợp
            
            File file = new File(filePath);
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            
            FileWriter fw = new FileWriter(file, true);
            PrintWriter pw = new PrintWriter(fw);
            
            pw.println("Email: " + user.getEmail());
            pw.println("First Name: " + user.getFirstName());
            pw.println("Last Name: " + user.getLastName());
            pw.println("------------------------");
            
            pw.close();
            fw.close();
            
            return 1; // Thành công
        } catch (IOException e) {
            e.printStackTrace();
            return 0; // Thất bại
        }
    }
    
    // Phương thức để kiểm tra email đã tồn tại chưa
    public static boolean emailExists(String email) {
        // Trong thực tế sẽ check database
        // Ở đây return false để đơn giản
        return false;
    }
    
    // Phương thức để lấy tất cả users (nếu cần)
    public static List<User> getAllUsers() {
        List<User> users = new ArrayList<>();
        // Implement logic to read from database/file
        return users;
    }
}