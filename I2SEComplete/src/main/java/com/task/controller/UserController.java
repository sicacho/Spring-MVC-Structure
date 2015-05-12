package com.task.controller;

import com.task.dao.ProjectDao;
import com.task.dao.UserDao;
import com.task.dao.impl.ProjectDaoImpl;
import com.task.dao.impl.RoleDaoImpl;
import com.task.dao.impl.UserDaoImpl;
import com.task.entity.Tblroleuser;
import com.task.entity.Tbluser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by khangtnse60992 on 4/30/2015.
 */
@Controller
@RequestMapping(value = "/user")
public class UserController {
    @Autowired
    UserDao userDao;

    @Autowired
    ProjectDao projectDao;

    @Autowired
    RoleDaoImpl roleDaoImpl;

    @RequestMapping(value = "/all",method = RequestMethod.GET)
    public String listUsers(ModelMap model){
        List<Tbluser> users = userDao.findAll();
        model.addAttribute("users",users);
        return "usermanage";
    }
    @RequestMapping(value = "/insert",method = RequestMethod.GET)
    public String insertRedirect() {
        return "useraction";
    }
    @RequestMapping(value = "/insert",method = RequestMethod.POST)
    public String insertRedirect(@RequestParam String username,
                                 @RequestParam String password,
                                 @RequestParam String phone,
                                 @RequestParam String email,
                                 @RequestParam Integer role) {
        Tbluser tbluser = new Tbluser();
        tbluser.setUsername(username);
        tbluser.setPassword(password);
        tbluser.setPhone(phone);
        tbluser.setEmail(email);
        tbluser.setTblprojectByProject(projectDao.find(1));
        Tblroleuser tblroleuser = new Tblroleuser();
        tblroleuser.setTblroleByRole(roleDaoImpl.find(role));
        tblroleuser.setTbluserByTbluser(tbluser);
        List<Tblroleuser> tblroleusers = new ArrayList<Tblroleuser>();
        tblroleusers.add(tblroleuser);
        tbluser.getTblroleusersById().addAll(tblroleusers);
        userDao.persist(tbluser);
        return "redirect:/user/all";
    }
}
