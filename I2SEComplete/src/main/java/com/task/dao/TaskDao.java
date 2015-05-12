package com.task.dao;

import com.task.entity.Tbltask;
import com.task.entity.Tbluser;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by khangtnse60992 on 5/12/2015.
 */
@Repository
public interface TaskDao {
    public Tbltask find(Integer id);
    List<Tbltask> findAll();
    @Transactional(propagation = Propagation.REQUIRED)
    public void persist(Tbltask entity);
    @Transactional(propagation = Propagation.REQUIRED)
    public void merge(Tbltask entity);
    @Transactional(propagation = Propagation.REQUIRED)
    public void remove(Tbltask entity);
    public List<Tbltask> getTaskUser(Integer id);
    public List<Tbltask> getTasksByStatus(Integer status);
}
