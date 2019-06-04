/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.formations.controller;

import fr.utbm.formations.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;


@Controller
public class ClientController {
   
    @Autowired
    private ClientService clientservice; 
    
 /*   @RequestMapping(value="/")
    public String showIndex(Model model){
       model.addAttribute("client", clientservice.all());
      return "index";
    }*/
    

}
