package com.task.controller;

import com.task.dao.impl.TaskDaoImpl;
import com.task.dao.impl.UserDaoImpl;
import com.task.entity.Tbltask;
import com.task.entity.Tbluser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by khangtnse60992 on 4/30/2015.
 */
@Controller
@RequestMapping(value = "/task")
public class TaskController {

    @Autowired
    TaskDaoImpl taskDao;

    @Autowired
    UserDaoImpl userDao;

    @Autowired
    HttpSession session;
    @RequestMapping(value = "/all",method = RequestMethod.GET)
    public String listTasks(ModelMap model) {
        List<Tbltask> tasks = taskDao.findAll();
        model.addAttribute("tasks",tasks);
        return "taskmanage";
    }

    @RequestMapping(value = "/all/{id}",method = RequestMethod.GET)
    public String listTasksUser(@PathVariable Integer id,ModelMap model) {
        List<Tbltask> tasks = taskDao.getTaskUser(id);
        model.addAttribute("tasks",tasks);
        return "taskmanage";
    }

    @RequestMapping(value = "/status/{status}",method = RequestMethod.GET)
    public String listTasksStatus(@PathVariable Integer status,ModelMap model) {
        List<Tbltask> tasks = taskDao.getTasksByStatus(status);
        model.addAttribute("tasks",tasks);
        return "taskmanage";
    }

    @RequestMapping(value = "/detail/{id}",method = RequestMethod.GET)
    public String taskDetail(@PathVariable Integer id,ModelMap model) {
        Tbltask task = taskDao.find(id);
        model.addAttribute("task",task);
        return "taskdetail";
    }

    @RequestMapping(value = "/insert",method = RequestMethod.GET)
    public String insertRedirect() {
        return "taskaction";
    }

    @RequestMapping(value = "/insert",method = RequestMethod.POST)
    public String insert(@RequestParam String name,
                         @RequestParam String detail) {
        Tbltask tbltask = new Tbltask();
        tbltask.setName(name);
        tbltask.setDetail(detail);
        tbltask.setStatus(1);
        tbltask.setTbluserByCreator((com.task.entity.Tbluser) session.getAttribute("user"));
        taskDao.persist(tbltask);
        return "redirect:/task/all";
    }

    @RequestMapping(value = "/update/{id}",method = RequestMethod.GET)
    public String updateRedirect(@PathVariable Integer id,ModelMap model) {
        Tbltask task = taskDao.find(id);
        List<Tbluser> users = userDao.findAll();
        model.addAttribute("task",task);
        model.addAttribute("users",users);
        return "taskaction";
    }

    @RequestMapping(value = "/update",method = RequestMethod.POST)
    public String update(@RequestParam Integer id,
                         @RequestParam String name,
                         @RequestParam String detail,
                         @RequestParam Integer worker,
                         @RequestParam Integer reviewer,ModelMap model) {
        Tbltask task = taskDao.find(id);
        task.setName(name);
        task.setDetail(detail);
        task.setTbluserByUserTask(userDao.find(worker));
        task.setTbluserByReviewer(userDao.find(reviewer));
        taskDao.merge(task);
        return "redirect:/task/all";
    }
    @RequestMapping(value = "/updateStatus",method = RequestMethod.POST)
    public String update(@RequestParam Integer id,
                         @RequestParam Integer status) {
        Tbltask task = taskDao.find(id);
        task.setStatus(status);
        taskDao.merge(task);
        return "redirect:/task/detail/"+id;
    }
}
