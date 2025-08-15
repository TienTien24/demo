package com.barbershop.service;

import com.barbershop.dao.AppointmentDAO;
import com.barbershop.entity.Appointment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class AppointmentServiceImpl implements AppointmentService {

    @Autowired
    private AppointmentDAO appointmentDAO;

    @Override
    public void book(Appointment appointment) {
        appointmentDAO.save(appointment);
    }

    @Override
    public List<Appointment> listAll() {
        return appointmentDAO.findAll();
    }
}

