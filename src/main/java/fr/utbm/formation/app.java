/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.formation;

import fr.utbm.formations.entity.Client;
import fr.utbm.formations.service.ClientService;
import java.util.ArrayList;
import java.util.List;

public class app {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        ClientService cs = new ClientService();
        List<Client> list = cs.all();
        for(Client c:list){
        System.out.println(c.toString());
        
        
        
    }
        
        
    }
    
}
