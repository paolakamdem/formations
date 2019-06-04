/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.formations.respository;

import fr.utbm.formations.entity.Course;
import java.util.ArrayList;
import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Transactional
@Repository
public class CourseDao {
    
    @Autowired(required=true)
    private SessionFactory sessionFactory;
    
    public void addCourses(Course c){
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(c);
    }
    
    public void updateCourse(Course c){
        Session session = this.sessionFactory.getCurrentSession();
        session.update(c);
    }
    
     public void removeCourse(String id) {
        Session session = this.sessionFactory.getCurrentSession();
        Course c = (Course) session.load(Course.class, id);
        if (null != c) {
            session.delete(c);
        }
    }
    
    
    public List<Course> all(){
        Session session = this.sessionFactory.getCurrentSession();
        List<Course> course = session.createQuery("from Course").list();
        
        return course;
    }
    
     public Course findById(Integer id) {
        Session session = this.sessionFactory.getCurrentSession();
        Course c = (Course) session.load(Course.class, id);
        return c;
    }
     
         public  List<Course> getCourseByName(String courseName)
    {
        List<Course> courses = new ArrayList();
        Session session = this.sessionFactory.getCurrentSession();
        Query query = session.createQuery("FROM Course WHERE title like '%' || ? || '%'");
        query.setString(0, courseName);
        courses = query.list();
        return courses;
    }
         
}
