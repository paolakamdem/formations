/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.formations.controller;

import fr.utbm.formations.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;


@Controller
public class ClientController {
   
    @Autowired
    private ClientService clientservice; 
    
 /*   @RequestMapping(value="/")
    public String showIndex(Model model){
       model.addAttribute("client", clientservice.all());
      return "index";
    }*/
    
    @RequestMapping(value = "/clientInscription", method = RequestMethod.POST)
    public String registerClient(){
        
        return "";
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
