

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
@Table(name="COURSE")
@Proxy(lazy = false)
public class Course implements java.io.Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "CODECOURSE")
    private Integer code;

    @Column(name = "TITLECOURSE")
    private String title;

    @OneToMany(mappedBy = "courseCode")
    private List<CourseSession> sessions;
    
    public Course() {
        this.sessions = new ArrayList<>();
    }

    public Course(int code, String title) {
        this.sessions = new ArrayList<>();
        this.code = code;
        this.title = title;
    }

    public List<CourseSession> getSessions() {
        return sessions;
    }

    public void setSessions(List<CourseSession> sessions) {
        this.sessions = sessions;
    }

    public Integer getCode() {
        return code;
    }

    public String getTitle() {
        return title;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public String toString() {
        return "Course{" + "code=" + code + ", title=" + title + '}';
    }
    
    
}
