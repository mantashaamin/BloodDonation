# 🩸 Blood Donation System

## 📌 Project Overview

This is a web-based Blood Donation System developed using **JSP, JDBC, and PostgreSQL**.
The system allows donors to register, log in, and manage their details, while admins can monitor and manage all donors.

---

## 🚀 Technologies Used

* Frontend: HTML, CSS, JSP
* Backend: Java (JDBC)
* Database: PostgreSQL
* Server: Apache Tomcat

---

## 👤 Modules

### 🔹 Donor Module

* Donor Login
* Personal Dashboard
* Add Donor Details
* View Donor Details
* Update Donor Information
* Delete Donor
* Search Donor (by Blood Group & City)

### 🔹 Admin Module

* Admin Login
* Admin Dashboard
* View All Donors
* Delete Donor
* View Total Donors Count

---

## ⚙️ Features

* ✅ CRUD Operations (Create, Read, Update, Delete)
* ✅ Authentication (Admin & Donor Login)
* ✅ Role-Based Access (Admin vs Donor)
* ✅ Search Functionality
* ✅ Session Management (Login/Logout)
* ✅ Responsive UI with CSS
* ✅ Database Connectivity using JDBC

---

## 🗄️ Database Schema

### donors table

* id (Primary Key)
* name
* blood
* city
* contact
* email
* disease
* password

### admin table

* id (Primary Key)
* email
* password

---

## 📁 Project Structure

### 🌐 Frontend / UI

* index.jsp
* header.jsp
* style.css

### 🔐 Authentication

* login.jsp
* adminLogin.jsp
* logout.jsp

### 📊 Dashboards

* donorDashboard.jsp
* adminDashboard.jsp

### 🔧 CRUD Operations

* addDonor.jsp
* insert.jsp
* viewDonor.jsp
* viewAllDonor.jsp
* deleteDonor.jsp
* editDonor.jsp
* updateDonor.jsp

### 🔍 Search

* search.jsp
* searchResult.jsp

---

## 🔄 Workflow

1. User/Admin logs in
2. Donor can manage personal details
3. Admin can manage all donors
4. Data stored and retrieved using PostgreSQL
5. JDBC handles database connectivity

---

## 📈 Future Improvements

* Password encryption
* Email notifications
* Advanced search filters
* Better UI/UX enhancements

---

## 🏁 Conclusion

This project demonstrates a complete **full-stack web application** using JSP, JDBC, and PostgreSQL with authentication, CRUD operations, and role-based dashboards.
