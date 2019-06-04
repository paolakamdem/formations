
package fr.utbm.formations.entity;

import java.util.*;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.hibernate.annotations.Proxy;



@Entity
@Table(name = "LOCATION")
@Proxy(lazy = false)
public class Location implements java.io.Serializable{
   
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "IDLOCATION")
    private Integer id;
    
    @Column(name = "CITYLOCATION")
    private String city;

    @OneToMany(mappedBy = "locationId")
    private List<CourseSession> sessions;

    public Location() {
        this.sessions = new ArrayList<>();
    }

    public Location(int id, String city) {
        this.sessions = new ArrayList<>();
        this.id = id;
        this.city = city;
    }

    public List<CourseSession> getSessions() {
        return sessions;
    }

    public void setSessions(List<CourseSession> sessions) {
        this.sessions = sessions;
    }

    
    public Integer getId() {
        return id;
    }

    public String getCity() {
        return city;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setCity(String city) {
        this.city = city;
    }

    @Override
    public String toString() {
        return "Location{" + "id=" + id + ", city=" + city + '}';
    }
    
    
}
