/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.formations.service;

import fr.utbm.formations.entity.Course;
import fr.utbm.formations.respository.CourseDao;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Transactional
@Service
public class CourseService {
    
    @Autowired
    private CourseDao courseDao;
    
    public List<Course> all(){
        return courseDao.all();
    }
    
    
    public void addCourses(Course c) {
        this.courseDao.addCourses(c);
    }

    public void updateCourse(Course c) {
        this.courseDao.updateCourse(c);
    }
    
    public void removeCourses(String id) {
        this.courseDao.removeCourse(id);
    }
    public List<Course> showCoursesByName(String courseName)
    {
        List<Course> courses;
        courses = courseDao.getCourseByName(courseName);
        return courses;
    }
}
