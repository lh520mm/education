package dao;

import model.Student;

import java.util.List;
import java.util.Map;

/**
 * Created by szs on 2017/7/5.
 */
public interface StudentMapper {

    List<Student> getStudentAll();

    int studentCount();

    String showSchool();

    int login(Map<String,Object> map);
}
