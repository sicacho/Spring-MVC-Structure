package com.task.dao;

import com.task.entity.Tblproject;
import com.task.entity.Tblrole;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by khangtnse60992 on 5/12/2015.
 */
@Repository
public interface ProjectDao {
    public Tblproject find(Integer id);
    List<Tblproject> findAll();
    @Transactional(propagation = Propagation.REQUIRED)
    public void persist(Tblproject entity);
    @Transactional(propagation = Propagation.REQUIRED)
    public void merge(Tblproject entity);
    @Transactional(propagation = Propagation.REQUIRED)
    public void remove(Tblproject entity);
}
