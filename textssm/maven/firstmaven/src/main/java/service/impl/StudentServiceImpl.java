package service.impl;

import com.mchange.v2.util.DoubleWeakHashMap;
import dao.StudentMapper;
import model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.StudentService;

import java.util.List;
import java.util.Map;

/**
 * Created by szs on 2017/7/5.
 */
@Service
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentMapper studentMapper;

    public List<Student> getStudentAll() {
        List<Student> list = null;
        try {
            list = studentMapper.getStudentAll();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public int studentcount() {
        int studentCount = studentMapper.studentCount();
        return studentCount;
    }

    public String showSchool() {
        String xiaoxun = studentMapper.showSchool();
        return xiaoxun;

    }

    public int login(Map<String, Object> map) {
        int mass = studentMapper.login(map);
        return mass;
    }


}
