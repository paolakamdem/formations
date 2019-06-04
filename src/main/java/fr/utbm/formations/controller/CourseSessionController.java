/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.formations.controller;

import fr.utbm.formations.service.CourseSessionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class CourseSessionController {
    
    @Autowired
    private CourseSessionService session;
    
    @RequestMapping(value="/session")
    public String showIndex(Model model){
      model.addAttribute("sessions", session.all());
      return "listsession";
    }
    
    @RequestMapping(value="/")
    public String courseAll(Model model){
       model.addAttribute("cours", session.all());
      return "index";
    }
    
}
