package com.murach.model;

import java.io.Serializable;

public class User implements Serializable {
    private String firstName;
    private String lastName;
    private String email;
    private String dob;                // Date of Birth
    private String source;             // How did you hear about us?
    private String offers;             // Nhận thông tin CDs/offers
    private String emailAnnouncements; // Nhận email announcements
    private String contactMethod;      // Contact method (Email/Postal)

    // Constructor mặc định
    public User() {
    }

    // Constructor đầy đủ
    public User(String firstName, String lastName, String email,
                String dob, String source, String offers,
                String emailAnnouncements, String contactMethod) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.dob = dob;
        this.source = source;
        this.offers = offers;
        this.emailAnnouncements = emailAnnouncements;
        this.contactMethod = contactMethod;
    }

    // Getters và Setters
    public String getFirstName() {
        return firstName;
    }
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }

    public String getDob() {
        return dob;
    }
    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getSource() {
        return source;
    }
    public void setSource(String source) {
        this.source = source;
    }

    public String getOffers() {
        return offers;
    }
    public void setOffers(String offers) {
        this.offers = offers;
    }

    public String getEmailAnnouncements() {
        return emailAnnouncements;
    }
    public void setEmailAnnouncements(String emailAnnouncements) {
        this.emailAnnouncements = emailAnnouncements;
    }

    public String getContactMethod() {
        return contactMethod;
    }
    public void setContactMethod(String contactMethod) {
        this.contactMethod = contactMethod;
    }

    // Method toString để debug
    @Override
    public String toString() {
        return "User{" +
                "firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", email='" + email + '\'' +
                ", dob='" + dob + '\'' +
                ", source='" + source + '\'' +
                ", offers='" + offers + '\'' +
                ", emailAnnouncements='" + emailAnnouncements + '\'' +
                ", contactMethod='" + contactMethod + '\'' +
                '}';
    }
}
