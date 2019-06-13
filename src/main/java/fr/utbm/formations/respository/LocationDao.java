/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.formations.respository;

import fr.utbm.formations.entity.Location;
import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Transactional
@Repository
public class LocationDao {
    
    @Autowired(required=true)
    private SessionFactory sessionFactory;
    
    public List<Location> all(){
        Session session = sessionFactory.getCurrentSession();
        Query query =  session.createQuery("from Location");     
        return (List<Location>)query.list();

    }
    
    public void addLocation(Location c){
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(c);
    }
    
     public void updateLocation(Location c){
        Session session = this.sessionFactory.getCurrentSession();
        session.update(c);
    }
     
    public Location findLocation(Integer id){
       Session session = this.sessionFactory.getCurrentSession();
        Location c = (Location) session.load(Location.class, id);
         return c;
    }
    
    public void deleteLocation(Integer id){
          Session session = this.sessionFactory.getCurrentSession();
        Location c = (Location) session.load(Location.class, id);
        if (null != c) {
            session.delete(c);
        }
    }
}
