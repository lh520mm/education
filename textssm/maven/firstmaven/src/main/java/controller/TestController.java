package controller;

import model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import service.StudentService;

import java.util.List;



/**
 * Created by szs on 2017/7/5.
 */
@Controller
@RequestMapping(value = "test")
public class TestController {

    //private static Logger logger = Logger.getLogger(TestController.class);
//定义静态常量的方式就是在controller中定义，私有类。。
    //   private  static   String  changliang = ConfigPropertyUtils.getProperty("filepath");
    //ConfigPropertyUtils导入jar包 然后调用其中的方法。选择我需要的静态常量。
    @Autowired
    private StudentService studentService;

    @RequestMapping(value = "test", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView test() {
        ModelAndView mv = new ModelAndView("test");
        List<Student> list = studentService.getStudentAll();
        mv.addObject("list", list);
        return mv;
    }

    @RequestMapping(value = "StudentCount", method = {RequestMethod.GET, RequestMethod.POST})
    //查询学生数量。
    @ResponseBody
    public int StudentCount() {
        int count = studentService.studentcount();
        return count;
    }

    @RequestMapping(value = "xiaoxun", method = RequestMethod.GET)
    //发送请求显示校训。从数据中查找。
    @ResponseBody
    public String showSchool() {
        String xiaoxun = studentService.showSchool();
        return xiaoxun;
    }



}
