package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import service.UserService;

/**
 * Created by sunzhaoshui on 2017/7/6.
 */
@Controller
@RequestMapping(value = "login")
public class UserController {

    @Autowired
private UserService  userService;

}
