/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.formations.controller;

import fr.utbm.formations.entity.Client;
import fr.utbm.formations.entity.Course;
import fr.utbm.formations.entity.CourseSession;
import fr.utbm.formations.service.CourseSessionService;
import fr.utbm.formations.service.LocationService;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class CourseSessionController {
    
    @Autowired
    private CourseSessionService session;
    
    @Autowired
    private LocationService location; 

    
    @RequestMapping(value="/session")
    public String displaySession(Model model){
      model.addAttribute("sessions", session.all());
      
      return "sessionDisplay";
    }

    @RequestMapping(value="/session/filter")
    public String displaySessionFilter(HttpServletRequest req, Model model) throws ParseException{
     
        //filter list 
        String title = req.getParameter("title");
        String city = req.getParameter("city");
        String date = req.getParameter("date");
        
        List<CourseSession> sessions = session.getCourseSessionFilter(city, date, title);
        
        model.addAttribute("sessions", sessions);
        model.addAttribute("locations", location.all());    
        
      return "sessionDisplay";
    }
    
    @RequestMapping(value="/cours/session/{id}", method=RequestMethod.GET)    
    public String displaySessionbyId(@PathVariable int id,Model model){
        
        model.addAttribute("session", session.findById(id));
        return "coursSession";
    }
    
    @RequestMapping(value="/cours/session/{id}/inscription", method=RequestMethod.GET)
    public String displaySessionbyiIdInscription(@PathVariable int id,Model model){
        CourseSession csession = session.findById(id);
        model.addAttribute("session", csession);
        
        Client client = new Client();
        client.setAddress("");
        client.setFirstName("");
        client.setLastName("");
        client.setPhone("");
        client.seteMail("");
        //client.setSessions(Arrays.asList(csession));
        //client.setId(null);
        
        model.addAttribute("client", new Client());
      
        return "clientInscription";
    }

   
    
}
