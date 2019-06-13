/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.formations.controller;

import fr.utbm.formations.entity.Course;
import fr.utbm.formations.entity.CourseSession;
import fr.utbm.formations.entity.Location;
import fr.utbm.formations.service.CourseService;
import fr.utbm.formations.service.CourseSessionService;
import fr.utbm.formations.service.LocationService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.hibernate.mapping.Collection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
    
    @Autowired
    private CourseSessionService session;
    
    @Autowired
    private LocationService location; 

    
    @RequestMapping(value="/", method=RequestMethod.GET)
    public String showIndex(){
            return "redirect:/cours";
    }
    
    
    @RequestMapping(value="/cours", method=RequestMethod.GET)   
    public String displayCourse(Model model){
        model.addAttribute("courses", course.all());
        
        return "coursDisplay";        
    }
    
    
    @RequestMapping(value="/cours/filter")    
    public String displayCourseFilter(HttpServletRequest req, Model model){
     
        //filter list 
        String title = req.getParameter("title");

        List<Course> courses = null;
        
        if(title!= null)
           courses = course.showCoursesByName(title);
   
        model.addAttribute("courses", courses);        
        
        return "coursDisplay";
    }
    
    
    
    }
