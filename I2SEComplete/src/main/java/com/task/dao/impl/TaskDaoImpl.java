package com.task.dao.impl;

import com.task.dao.BaseDao;
import com.task.dao.TaskDao;
import com.task.entity.Tbltask;
import com.task.entity.Tbluser;
import org.springframework.stereotype.Repository;

import javax.persistence.NoResultException;
import javax.persistence.Query;
import java.util.List;

/**
 * Created by khangtnse60992 on 4/30/2015.
 */
@Repository
public class TaskDaoImpl extends BaseDao<Tbltask, Integer> implements TaskDao{

    public List<Tbltask> getTaskUser(Integer id) {
        Query query = null;
        query = entityManager.createQuery("select u from Tbltask u where u.tbluserByUserTask.id =:id or u.tbluserByReviewer.id =:id", Tbltask.class);
        query.setParameter("id", id);
        List<Tbltask> tbltasks = null ;
        try {
            tbltasks = query.getResultList();
        } catch (Exception e) {
            System.out.println("Tasks null");
        }
        return tbltasks;
    }
    public List<Tbltask> getTasksByStatus(Integer status) {
        Query query = null;
        query = entityManager.createQuery("select u from Tbltask u where u.status =:status", Tbltask.class);
        query.setParameter("status", status);
        List<Tbltask> tbltasks = null ;
        try {
            tbltasks = query.getResultList();
        } catch (Exception e) {
            System.out.println("Tasks null");
        }
        return tbltasks;
    }
}
