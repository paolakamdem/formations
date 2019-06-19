/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.formations.service;

import fr.utbm.formations.entity.CourseSession;
import org.springframework.stereotype.Service;
import fr.utbm.formations.respository.CourseSessionDao;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
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

  
 public List<CourseSession> getCourseSessionFilter(String city, String  title, String dateSession) throws ParseException
    {
        List<CourseSession> courseSessions;
        courseSessions = crsDao.getCourseSessionByLocationTitleDate(city, title, dateSession);
        return courseSessions;
    }
    
 
    public List<CourseSession> getCourseSessionByLocationTitle(String city,String title)
    {
        List<CourseSession> courseSessions;
        courseSessions = crsDao.getCourseSessionByLocationTitle(city,title);
        return courseSessions;
    }
  
    
}
