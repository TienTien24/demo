package com.barbershop.service;

import com.barbershop.entity.Appointment;

import java.util.List;

public interface AppointmentService {
    void book(Appointment appointment);
    List<Appointment> listAll();
}
