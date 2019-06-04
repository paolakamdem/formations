
package fr.utbm.formations.entity;

import java.util.*;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import org.hibernate.annotations.Proxy;

@Entity
@Table(name = "COURSE_SESSION")
@Proxy(lazy = false)
public class CourseSession implements java.io.Serializable{
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "IDSESSION")
    private Integer id;
    
    @Column(name = "START_DATE", nullable=false)
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date startDate;
    
    @Column(name = "END_DATE", nullable=false)
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date endDate;
    
    @Column(name = "MAX_SESSION")
    private int max;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="CODECOURSE")
    private Course courseCode;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="IDLOCATION")    
    private Location locationId;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name="INCLUDE",
        joinColumns=@JoinColumn(name="IDSESSION"),
        inverseJoinColumns=@JoinColumn(name="IDCLIENT")
    )
    private List<Client> clients; 

    public List<Client> getClients() {
        return clients;
    }

    public void setClients(List<Client> clients) {
        this.clients = clients;
    }
    
    public void addClient(Client c){
            clients.add(c);
            c.getSessions().add(this);
    }
    
    public void removeClient(Client c){
            clients.remove(c);
            c.getSessions().remove(this);
   }
    
    public CourseSession() {
    }

    public CourseSession(int id, Date startDate, Date endDate, int max ) {
        this.id = id;
        this.startDate = startDate;
        this.endDate = endDate;
        this.max = max;

    }

    public Integer getId() {
        return id;
    }

    public Date getStartDate() {
        return startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public int getMax() {
        return max;
    }

    public Course getCourseCode() {
        return courseCode;
    }

    public Location getLocationId() {
        return locationId;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public void setMax(int max) {
        this.max = max;
    }

    public void setCourseCode(Course courseCode) {
        this.courseCode = courseCode;
    }

    public void setLocationId(Location locationId) {
        this.locationId = locationId;
    }

    @Override
    public String toString() {
        return "CourseSession{" + "id=" + id + ", startDate=" + startDate + ", endDate=" + endDate + ", max=" + max + ", courseCode=" + courseCode + ", locationId=" + locationId + '}';
    }

   
    
    
}
