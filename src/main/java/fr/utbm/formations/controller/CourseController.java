/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.formations.controller;

import fr.utbm.formations.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author ornei
 */
@Controller
public class CourseController {
    
    @Autowired
    private CourseService course;
    
    @RequestMapping(value="/coursDisplay", method=RequestMethod.GET)   
    public String displayCourse(){
        
        return "";        
    }
    
    @RequestMapping(value="/coursDisplay", method=RequestMethod.POST)    
    public String displayCourseFilter(){
     
        return "";
    }
    
    

    }
