/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.formations.service;

import fr.utbm.formations.entity.CourseSession;
import org.springframework.stereotype.Service;
import fr.utbm.formations.respository.CourseSessionDao;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import javax.transaction.Transactional;



@Transactional
@Service
public class CourseSessionService {
    @Autowired 
    private CourseSessionDao crsDao;
    
    public List<CourseSession> all(){
        return crsDao.all();
    }
    
    public void addSession(CourseSession c) {
        this.crsDao.addSession(c);
    }
    
     public void updateSession(CourseSession c) {
        this.crsDao.updateSession(c);
    }
     
    public CourseSession findById(Integer id) {
        return this.crsDao.findById(id);
    }
    
    public void removeSession(Integer id) {
        this.crsDao.removeSession(id);
    }
    
    public List<CourseSession> getCourseSessionByLocation(String location)
    {
        List<CourseSession> courseSessions;
        courseSessions = crsDao.getCourseSessionByLocation(location);
        return courseSessions;
    }
    
    public List<CourseSession> getCourseSessionByDate(Date dateSession)
    {
        List<CourseSession> courseSessions;
        courseSessions = crsDao.getCourseSessionByDate(dateSession);
        return courseSessions;
    }
    
    public List<CourseSession> getCourseSessionByLocationDate(String location,Date dateSession,String cours)
    {
        List<CourseSession> courseSessions;
        courseSessions = crsDao.getCourseSessionByLocationDate(location,dateSession,cours);
        return courseSessions;
    }
    
}
