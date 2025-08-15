package com.barbershop.dao;

import com.barbershop.entity.Appointment;
import org.springframework.stereotype.Repository;

@Repository
public class AppointmentDAOImpl extends GenericDAOImpl<Appointment, Long> implements AppointmentDAO {
}
