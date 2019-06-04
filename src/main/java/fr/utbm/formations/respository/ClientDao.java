/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.formations.respository;

import fr.utbm.formations.entity.Client;
import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
@Transactional
public class ClientDao {
    @Autowired(required=true)
    private SessionFactory sessionFactory;
    
    
    public List<Client> all(){
        Session session = sessionFactory.getCurrentSession();
        Query query =  session.createQuery("from Client");     
        return (List<Client>)query.list();
    }
    
    public void addClient(Client c){
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(c);
    }
    
    public void updateClient(Client c){
        Session session = this.sessionFactory.getCurrentSession();
        session.update(c);
    }
    
    public Client FindClient(Integer id){
       Session session = this.sessionFactory.getCurrentSession();
        Client c = (Client) session.load(Client.class, id);
         return c;
    }
    
    public void deleteClient(Integer id){
          Session session = this.sessionFactory.getCurrentSession();
        Client c = (Client) session.load(Client.class, id);
        if (null != c) {
            session.delete(c);
        }
    }
    
}
