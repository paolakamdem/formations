/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.formations.controller;

import fr.utbm.formations.entity.Client;
import fr.utbm.formations.entity.CourseSession;
import fr.utbm.formations.service.ClientService;
import fr.utbm.formations.service.CourseSessionService;
import java.util.Arrays;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;


@Controller
public class ClientController {
   
    @Autowired
    private ClientService clientservice; 
    
    @Autowired
    private CourseSessionService session;
    
    
 /*   @RequestMapping(value="/")
    public String showIndex(Model model){
       model.addAttribute("client", clientservice.all());
      return "index";
    }*/
    
    @RequestMapping(value = "/register/{id}", method = RequestMethod.POST)
    public String registerClient(@PathVariable int id,@ModelAttribute("client")Client client,BindingResult result,Model model ){
        //if(result.hasErrors())
          //  return "clientInscription";
        
        System.out.println("client récupéré");
        Client nclient = new Client();
        nclient.setAddress("14 jsjdjjif");
        nclient.setFirstName("vanessa ");
        nclient.setLastName("kameni");
        nclient.setPhone("+33526451544");
        nclient.seteMail("tout@gmail.com");
        clientservice.addClient(nclient);
        //CourseSession csession = session.findById(id);
        //csession.addClient(client);
       
        model.addAttribute("client",client);
        //model.addAttribute("session",csession);
        
        return "validation";
    }

    
    @RequestMapping(value = "{id}/register")
    public String registerClient(@PathVariable int id,Model model ){
        //if(result.hasErrors())
          //  return "clientInscription";
        CourseSession csession = session.findById(id);
        System.out.println("client récupéré");
        Client nclient = new Client();
        nclient.setAddress("14 jsjdjjif");
        nclient.setFirstName("vanessa ");
        nclient.setLastName("kameni");
        nclient.setPhone("+33526451544");
        nclient.seteMail("tout@gmail.com");
        //nclient.setSessions(Arrays.asList(csession));
        clientservice.addClient(nclient);
        
        csession.addClient(nclient);
       
        model.addAttribute("client",nclient);
        model.addAttribute("session",csession);
        
        return "validation";
    }

    
/*    
    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public void displayClient(){
    }

    @RequestMapping(value = "/hello", method = RequestMethod.GET)
   public String printHello(Model model) {
      model.addAttribute("message", "Hello Spring MVC Framework!");
      return "hello";
   }
*/

}
