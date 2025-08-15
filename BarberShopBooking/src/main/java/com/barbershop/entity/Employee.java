package com.barbershop.entity;

import javax.persistence.*;
import java.time.LocalTime;

@Entity
@Table(name = "employee")
public class Employee {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long employeeId;

    private String name;
    private String phone;
    private String email;
    private LocalTime workStartTime;
    private LocalTime workEndTime;

    // Getter & Setter
}
