/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.formations.service;

import fr.utbm.formations.entity.Location;
import fr.utbm.formations.respository.LocationDao;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
@Transactional
public class LocationService {
    
    @Autowired
    private LocationDao locationDao;
    
    public List<Location> all(){
        return locationDao.all();
    }
    
    
    public void addLocation(Location c) {
        this.locationDao.addLocation(c);
    }

    public void updateLocation(Location c) {
        this.locationDao.updateLocation(c);
    }
    
    public void removeLocation(int id) {
        this.locationDao.deleteLocation(id);
    }

}
