package com.task.controller;

import com.task.dao.UserDao;
import com.task.dao.impl.UserDaoImpl;
import com.task.entity.Tbluser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

/**
 * Created by khangtnse60992 on 4/30/2015.
 */
@Controller
public class ProjectController {
    @Autowired
    UserDao userDao;
    @Autowired
    HttpSession sesson;
    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String redirect() {
        if(sesson.getAttribute("user")==null) {
            return "redirect:/login";
        }
        return "index";
    }
    @RequestMapping(value = "/document",method = RequestMethod.GET)
    public String document() {
        return "documentmanage";
    }
    @RequestMapping(value = "/calendar",method = RequestMethod.GET)
    public String calendar() {
        return "calendar";
    }
    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String LoginRedirect() {
        return "login";
    }
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String Login(@RequestParam String username,@RequestParam String password) {
        Tbluser tbluser = userDao.checkLogin(username, password);
        sesson.setAttribute("user",tbluser);
        return "redirect:/";
    }
    @RequestMapping(value = "/logout",method = RequestMethod.GET)
    public String logout() {
        sesson.invalidate();
        return "redirect:/login";
    }
}
