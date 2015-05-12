package com.task.dao.impl;

import com.task.dao.BaseDao;
import com.task.dao.UserDao;
import com.task.entity.Tbluser;
import org.springframework.stereotype.Repository;

import javax.persistence.NoResultException;
import javax.persistence.Query;

/**
 * Created by khangtnse60992 on 4/30/2015.
 */
@Repository
public class UserDaoImpl extends BaseDao<Tbluser,Integer> implements UserDao {

    public Tbluser checkLogin(String username,String password) {
        Query query = null;
        query = entityManager.createQuery("select u from Tbluser u where u.username=:username and u.password=:password", Tbluser.class);
        query.setParameter("username", username);
        query.setParameter("password", password);
        Tbluser tbluser = null;
        try {
            tbluser = (Tbluser) query.getSingleResult();
        } catch (NoResultException e) {
            System.out.println("User null");
        }
        return tbluser;
    }
}
