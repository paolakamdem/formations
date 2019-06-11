
package fr.utbm.formations.entity;


import java.util.*;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import org.hibernate.annotations.Proxy;
import javax.validation.constraints.Pattern;

@Entity
@Table(name="client")
@Proxy(lazy = false)
public class Client implements java.io.Serializable{
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "IDCLIENT")
    private Integer id;
    
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }

    @Column(name = "LASTNAME")    
    private String lastName;
    public String getLastName() {
        return lastName;
    }
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    
    @Column(name = "FIRSTNAME")
    private String firstName;

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    
    @Column(name = "ADDRESS")
    private String address; 

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    
    @Column(name = "PHONE")
    private String phone;

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Pattern(regexp = ".+@.+\\..+", message = "Email Non valide")
    @Column(name = "EMAIL")
    private String eMail;

    public String geteMail() {
        return eMail;
    }

    public void seteMail(String eMail) {
        this.eMail = eMail;
    }

    
    @ManyToMany(mappedBy = "clients")
    private List<CourseSession> sessions;
    
    public List<CourseSession> getSessions() {
        return sessions;
    }
    public void setSessions(List<CourseSession> sessions) {
        this.sessions = sessions;
    }
        
    public Client() {
        this.sessions = new ArrayList<>();
    }

    public Client(String lastName, String firstName, String address, String phone, String eMail) {
        this.lastName = lastName;
        this.firstName = firstName;
        this.address = address;
        this.phone = phone;
        this.eMail = eMail;
        this.sessions = new ArrayList<>();
    }

 

    @Override
    public String toString() {
        return "Client{" + "id=" + id + ", lastName=" + lastName + ", firstName=" + firstName + ", address=" + address + ", phone=" + phone + ", eMail=" + eMail + '}';
    }

   

    
    
}
