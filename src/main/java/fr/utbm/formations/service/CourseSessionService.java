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

    public List<CourseSession> getCourseSessionFilter(String city,String date,String title) throws ParseException
    {
        List<CourseSession> courseSessions = null;
        //List<CourseSession> result = new ArrayList<>();
        
        if(!date.equals("")){
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-mm-dd");
            Date startdate = formatter.parse(date);
        
            courseSessions = this.getCourseSessionByDate(startdate);
        }
        else
            courseSessions = this.all();
        
        if(!city.equals("") && !title.equals("")){ 
            List<CourseSession> result = this.getSessionFilterbyLocationName(courseSessions, city, title);
            courseSessions = new ArrayList<>();
            courseSessions.addAll(result);
        }
        if(city.equals("") && !title.equals("")){           
             List<CourseSession> result = this.getSessionFilterbyName(courseSessions,title);
            courseSessions = new ArrayList<>();
            courseSessions.addAll(result);}
        if(!title.equals("") && city.equals("")){
            List<CourseSession> result = this.getSessionFilterbyLocation(courseSessions, city);
            courseSessions = new ArrayList<>();
            courseSessions.addAll(result);
        }            
            

        return courseSessions;
    }
    
    
    public List<CourseSession> getSessionFilterbyName(List<CourseSession> list,String cours)
    {
        List<CourseSession> result = new ArrayList<>();
        
        for(CourseSession s:list){
            if((s.getLocationId().getCity()).equals(cours))
                result.add(s);
        }

        return result;
    }

    public List<CourseSession> getSessionFilterbyLocationName(List<CourseSession> list,String city,String cours)
    {
        List<CourseSession> result = new ArrayList<>();
        
        for(CourseSession s:list){
            if((s.getCourseCode().getTitle()).equals(cours) && (s.getLocationId().getCity()).equals(city) )
                result.add(s);
        }

        return result;
    }    
    
    
    public List<CourseSession> getSessionFilterbyLocation(List<CourseSession> list,String city)
    {
        List<CourseSession> result = new ArrayList<>();
        
        for(CourseSession s:list){
            if((s.getLocationId().getCity()).equals(city))
                result.add(s);
        }

        return result;
    }    
    
    
   /* public List<CourseSession> getCourseSessionByLocation(String location)
    {
        List<CourseSession> courseSessions;
        courseSessions = crsDao.getCourseSessionByLocation(location);
        return courseSessions;
    }*/
    
    public List<CourseSession> getCourseSessionByDate(Date dateSession)
    {
        List<CourseSession> courseSessions;
        courseSessions = crsDao.getCourseSessionByDate(dateSession);
        return courseSessions;
    }
    
   /* public List<CourseSession> getCourseSessionByLocationDate(String location,Date dateSession,String cours)
    {
        List<CourseSession> courseSessions;
        courseSessions = crsDao.getCourseSessionByLocationDate(location,dateSession,cours);
        return courseSessions;
    }*/
    
}
