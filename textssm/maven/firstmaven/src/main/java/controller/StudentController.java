package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import service.StudentService;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by sunzhaoshui on 2017/7/6.
 */

@Controller
@RequestMapping(value = "Student")
public class StudentController {
    @Autowired
    public StudentService studentService;

    @RequestMapping(value = "Student.act")
    //获取一个视图。返回一个页面
    public String student() {
        return "test";
    }

    @RequestMapping(value = "login.act", method = RequestMethod.POST)
    @ResponseBody
    //登录功能。
    public int login(String username, String password) {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("username", username);
        map.put("password", password);

        int Verification = studentService.login(map);
        return Verification;

    }


}
