/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.formations.service;

import fr.utbm.formations.entity.Client;
import fr.utbm.formations.respository.ClientDao;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
@Transactional
public class ClientService {
    
    @Autowired
    private ClientDao clientDao;
       
    public List<Client> all(){
        return clientDao.all();
    }
    
    public void addClient(Client c) {
        this.clientDao.addClient(c);
    }
    
    public void updateClient(Client c) {
        this.clientDao.updateClient(c);
    }
    
    public Client findClient(Integer id) {
        return this.clientDao.FindClient(id);
    }
    
    public void deleteClient(Integer id) {
        this.clientDao.deleteClient(id);
    }

}
