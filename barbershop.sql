CREATE DATABASE barbershop;
USE barbershop;

CREATE TABLE user (
    user_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255),
    full_name VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100),
    role ENUM('CUSTOMER','ADMIN')
);

CREATE TABLE employee (
    employee_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100),
    work_start_time TIME,
    work_end_time TIME
);

CREATE TABLE service (
    service_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(10,2),
    duration INT
);

CREATE TABLE schedule (
    schedule_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    employee_id BIGINT,
    work_date DATE,
    start_time TIME,
    end_time TIME,
    is_available BOOLEAN,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

CREATE TABLE appointment (
    appointment_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    user_id BIGINT,
    employee_id BIGINT,
    service_id BIGINT,
    appointment_date DATE,
    start_time TIME,
    end_time TIME,
    status ENUM('BOOKED','CANCELLED','COMPLETED'),
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
    FOREIGN KEY (service_id) REFERENCES service(service_id)
);

CREATE TABLE review (
    review_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    appointment_id BIGINT,
    rating INT,
    comment TEXT,
    review_date DATETIME,
    FOREIGN KEY (appointment_id) REFERENCES appointment(appointment_id)
);
