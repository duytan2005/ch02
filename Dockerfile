FROM tomcat:9.0.108-jdk17

# Xóa app mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR đã build (ví dụ NetBeans sinh ra ở dist/)
COPY dist/*.war /usr/local/tomcat/webapps/ROOT.war

# Đổi port của Tomcat thành PORT do Render cấp
RUN sed -i 's/port="8080"/port="${PORT}"/' /usr/local/tomcat/conf/server.xml

CMD ["catalina.sh", "run"]
