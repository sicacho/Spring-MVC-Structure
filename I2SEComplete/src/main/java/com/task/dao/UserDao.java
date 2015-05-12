package com.task.dao;

import com.task.entity.Tbluser;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by khangtnse60992 on 5/12/2015.
 */
@Repository
public interface UserDao {
    public Tbluser find(Integer id);
    List<Tbluser> findAll();
    @Transactional(propagation = Propagation.REQUIRED)
    public void persist(Tbluser entity);
    @Transactional(propagation = Propagation.REQUIRED)
    public void merge(Tbluser entity);
    @Transactional(propagation = Propagation.REQUIRED)
    public void remove(Tbluser entity);
    public Tbluser checkLogin(String username,String password);
}
