package com.task.entity;

import javax.persistence.*;

/**
 * Created by khangtnse60992 on 4/30/2015.
 */
@Entity
public class Tbldocument {
    @Id
    @GeneratedValue
    @Column(name = "id", nullable = false, insertable = true, updatable = true)
    private Integer id;
    @Basic
    @Column(name = "name", nullable = true, insertable = true, updatable = true, length = 45)
    private String name;
    @Basic
    @Column(name = "link", nullable = true, insertable = true, updatable = true, length = 255)
    private String link;
    //    private Integer project;
    @Basic
    @Column(name = "security", nullable = true, insertable = true, updatable = true)
    private Integer security;
    @ManyToOne
    @JoinColumn(name = "project", referencedColumnName = "id")
    private Tblproject tblprojectByProject;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

//    @Basic
//    @Column(name = "project", nullable = true, insertable = true, updatable = true)
//    public Integer getProject() {
//        return project;
//    }
//
//    public void setProject(Integer project) {
//        this.project = project;
//    }


    public Integer getSecurity() {
        return security;
    }

    public void setSecurity(Integer security) {
        this.security = security;
    }

//    @Override
//    public boolean equals(Object o) {
//        if (this == o) return true;
//        if (o == null || getClass() != o.getClass()) return false;
//
//        Tbldocument that = (Tbldocument) o;
//
//        if (id != null ? !id.equals(that.id) : that.id != null) return false;
//        if (link != null ? !link.equals(that.link) : that.link != null) return false;
//        if (name != null ? !name.equals(that.name) : that.name != null) return false;
//        if (project != null ? !project.equals(that.project) : that.project != null) return false;
//        if (security != null ? !security.equals(that.security) : that.security != null) return false;
//
//        return true;
//    }
//
//    @Override
//    public int hashCode() {
//        int result = id != null ? id.hashCode() : 0;
//        result = 31 * result + (name != null ? name.hashCode() : 0);
//        result = 31 * result + (link != null ? link.hashCode() : 0);
//        result = 31 * result + (project != null ? project.hashCode() : 0);
//        result = 31 * result + (security != null ? security.hashCode() : 0);
//        return result;
//    }


    public Tblproject getTblprojectByProject() {
        return tblprojectByProject;
    }

    public void setTblprojectByProject(Tblproject tblprojectByProject) {
        this.tblprojectByProject = tblprojectByProject;
    }
}
