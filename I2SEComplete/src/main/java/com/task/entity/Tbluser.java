package com.task.entity;

import org.hibernate.annotations.Cascade;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * Created by khangtnse60992 on 4/30/2015.
 */
@Entity
public class Tbluser {
    @Id
    @GeneratedValue
    @Column(name = "id", nullable = false, insertable = true, updatable = true)
    private Integer id;
    @Basic
    @Column(name = "username", nullable = true, insertable = true, updatable = true, length = 45)
    private String username;
    @Basic
    @Column(name = "password", nullable = true, insertable = true, updatable = true, length = 45)
    private String password;
    @Basic
    @Column(name = "email", nullable = true, insertable = true, updatable = true, length = 45)
    private String email;
    @Basic
    @Column(name = "phone", nullable = true, insertable = true, updatable = true, length = 45)
    private String phone;
//    @Basic
//    @Column(name = "project", nullable = true, insertable = true, updatable = true)
//    private Integer project;
    @OneToMany(mappedBy = "tbluserByTbluser",fetch = FetchType.LAZY,orphanRemoval = true)
    @Cascade(org.hibernate.annotations.CascadeType.ALL)
    private List<Tblroleuser> tblroleusersById = new ArrayList<Tblroleuser>();
    @OneToMany(mappedBy = "tbluserByCreator",fetch = FetchType.LAZY,orphanRemoval = true)
    @Cascade(org.hibernate.annotations.CascadeType.ALL)
    private List<Tbltask> taskCreator = new ArrayList<Tbltask>();
    @OneToMany(mappedBy = "tbluserByReviewer",fetch = FetchType.LAZY,orphanRemoval = true)
    @Cascade(org.hibernate.annotations.CascadeType.ALL)
    private List<Tbltask> taskReviewer = new ArrayList<Tbltask>();
    @OneToMany(mappedBy = "tbluserByUserTask",fetch = FetchType.LAZY,orphanRemoval = true)
    @Cascade(org.hibernate.annotations.CascadeType.ALL)
    private List<Tbltask> taskWorker = new ArrayList<Tbltask>();
    @ManyToOne
    @JoinColumn(name = "project", referencedColumnName = "id")
    private Tblproject tblprojectByProject;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

//    public Integer getProject() {
//        return project;
//    }
//
//    public void setProject(Integer project) {
//        this.project = project;
//    }
//
//    @Override
//    public boolean equals(Object o) {
//        if (this == o) return true;
//        if (o == null || getClass() != o.getClass()) return false;
//
//        Tbluser tbluser = (Tbluser) o;
//
//        if (email != null ? !email.equals(tbluser.email) : tbluser.email != null) return false;
//        if (id != null ? !id.equals(tbluser.id) : tbluser.id != null) return false;
//        if (password != null ? !password.equals(tbluser.password) : tbluser.password != null) return false;
//        if (phone != null ? !phone.equals(tbluser.phone) : tbluser.phone != null) return false;
//        if (project != null ? !project.equals(tbluser.project) : tbluser.project != null) return false;
//        if (username != null ? !username.equals(tbluser.username) : tbluser.username != null) return false;
//
//        return true;
//    }
//
//    @Override
//    public int hashCode() {
//        int result = id != null ? id.hashCode() : 0;
//        result = 31 * result + (username != null ? username.hashCode() : 0);
//        result = 31 * result + (password != null ? password.hashCode() : 0);
//        result = 31 * result + (email != null ? email.hashCode() : 0);
//        result = 31 * result + (phone != null ? phone.hashCode() : 0);
//        result = 31 * result + (project != null ? project.hashCode() : 0);
//        return result;
//    }


    public Tblproject getTblprojectByProject() {
        return tblprojectByProject;
    }

    public void setTblprojectByProject(Tblproject tblprojectByProject) {
        this.tblprojectByProject = tblprojectByProject;
    }

    public void setTblroleusersById(List<Tblroleuser> tblroleusersById) {
        this.tblroleusersById = tblroleusersById;
    }

    public List<Tblroleuser> getTblroleusersById() {
        return tblroleusersById;
    }

    public List<Tbltask> getTaskCreator() {
        return taskCreator;
    }

    public void setTaskCreator(List<Tbltask> taskCreator) {
        this.taskCreator = taskCreator;
    }

    public List<Tbltask> getTaskReviewer() {
        return taskReviewer;
    }

    public void setTaskReviewer(List<Tbltask> taskReviewer) {
        this.taskReviewer = taskReviewer;
    }

    public List<Tbltask> getTaskWorker() {
        return taskWorker;
    }

    public void setTaskWorker(List<Tbltask> taskWorker) {
        this.taskWorker = taskWorker;
    }
}
