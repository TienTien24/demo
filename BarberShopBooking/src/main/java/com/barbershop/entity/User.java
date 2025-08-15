package com.barbershop.entity;

import javax.persistence.*;

@Entity
@Table(name = "user")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long userId;

    @Column(unique = true, nullable = false)
    private String username;

    private String password;
    private String fullName;
    private String phone;
    private String email;

    @Enumerated(EnumType.STRING)
    private Role role;

    public enum Role {
        CUSTOMER, ADMIN
    }

    // Getter & Setter
}

