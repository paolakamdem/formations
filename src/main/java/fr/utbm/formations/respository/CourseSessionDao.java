/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.formations.respository;

import fr.utbm.formations.entity.CourseSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;




@Transactional
@Repository
public class CourseSessionDao {
    @Autowired(required=true)
    private SessionFactory sessionFactory;
    
    
    public List<CourseSession> all(){
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from CourseSession");
        return (List<CourseSession>)query.list();
    }    
    
    public void addSession(CourseSession c){
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(c);
    }
    
    public void updateSession(CourseSession c){
        Session session = this.sessionFactory.getCurrentSession();
        session.update(c);
    }
    
    public CourseSession findById(Integer id) {
        Session session = this.sessionFactory.getCurrentSession();
        CourseSession c = (CourseSession) session.load(CourseSession.class, id);
        return c;
    }
    
    public void removeSession(Integer id) {
        Session session = this.sessionFactory.getCurrentSession();
        CourseSession c = (CourseSession) session.load(CourseSession.class, id);
        if (null != c) {
            session.delete(c);
        }
    }
    
    public List<CourseSession> getCourseSessionByLocation(String location)
    {
        List<CourseSession> CourseSessions = new ArrayList();
        Session session = this.sessionFactory.getCurrentSession();
        Query query = session.createQuery("FROM CourseSession as CourseSession WHERE CourseSession.location.city like '%' || ? || '%'");
        query.setParameter(0, location);
        CourseSessions = query.list();
        return CourseSessions;
    }
    
    public  List<CourseSession> getCourseSessionByDate(Date dateSession)
    {
        List<CourseSession> CourseSessions = new ArrayList();
        Session session = this.sessionFactory.getCurrentSession();
        Query query = session.createQuery("FROM CourseSession as CourseSession WHERE CourseSession.startDate = ?");
        query.setParameter(0, dateSession);
        query.setParameter(1,dateSession);
        CourseSessions = query.list();
        return CourseSessions;
    }
    
    public List<CourseSession> getCourseSessionByLocationDate(String location,Date dateSession,String cours)
    {
        List<CourseSession> CourseSessions = new ArrayList();
        Session session = this.sessionFactory.getCurrentSession();
        Query query = session.createQuery("FROM CourseSession as CourseSession WHERE CourseSession.locationId.city like '%' || ? || '%' AND CourseSession.startDate = ? AND CourseSession.courseCode.title like '%' || ? || '%' ");
        query.setParameter(0, location);
        query.setParameter(1,dateSession);
        query.setParameter(2,cours);
        CourseSessions = query.list();
        return CourseSessions;
    }
}
