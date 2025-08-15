package com.barbershop.controller;

import com.barbershop.entity.Appointment;
import com.barbershop.service.AppointmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/appointment")
public class AppointmentController {

    @Autowired
    private AppointmentService appointmentService;

    @GetMapping("/book")
    public String bookForm(Model model) {
        model.addAttribute("appointment", new Appointment());
        return "book_appointment";
    }

    @PostMapping("/book")
    public String bookSubmit(@ModelAttribute Appointment appointment) {
        appointmentService.book(appointment);
        return "redirect:/appointment/list";
    }

    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("appointments", appointmentService.listAll());
        return "list_appointments";
    }
}
