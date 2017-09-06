package service;

import model.Student;

import java.util.List;
import java.util.Map;

/**
 * Created by szs on 2017/7/5.
 */
public interface StudentService {
    List<Student> getStudentAll();

    int studentcount();

    String showSchool();

    int login(Map<String, Object> map);


}
