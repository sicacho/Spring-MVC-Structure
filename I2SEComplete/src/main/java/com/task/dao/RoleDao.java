package com.task.dao;

import com.task.entity.Tblrole;
import com.task.entity.Tbltask;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by khangtnse60992 on 5/12/2015.
 */
@Repository
public interface RoleDao {
    public Tblrole find(Integer id);
    List<Tblrole> findAll();
    @Transactional(propagation = Propagation.REQUIRED)
    public void persist(Tblrole entity);
    @Transactional(propagation = Propagation.REQUIRED)
    public void merge(Tblrole entity);
    @Transactional(propagation = Propagation.REQUIRED)
    public void remove(Tblrole entity);
}
