package com.task.entity;

import javax.persistence.*;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * Created by khangtnse60992 on 4/30/2015.
 */
@Entity
public class Tblproject {
    @Id
    @GeneratedValue
    @Column(name = "id", nullable = false, insertable = true, updatable = true)
    private Integer id;
    @Basic
    @Column(name = "name", nullable = true, insertable = true, updatable = true, length = 45)
    private String name;
    @Basic
    @Column(name = "detail", nullable = true, insertable = true, updatable = true, length = 45)
    private String detail;
    @Basic
    @Column(name = "status", nullable = true, insertable = true, updatable = true)
    private Integer status;
    @Basic
    @Column(name = "startTime", nullable = true, insertable = true, updatable = true)
    private Date startTime;
    @Basic
    @Column(name = "endTime", nullable = true, insertable = true, updatable = true)
    private Date endTime;
    @OneToMany(mappedBy = "tblprojectByProject")
    private List<Tbldocument> tbldocumentsById = new ArrayList<Tbldocument>();
    @OneToMany(mappedBy = "tblprojectByProject")
    private List<Tbluser> tblusersById = new ArrayList<Tbluser>();


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


    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }


    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }


    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }


    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Tblproject that = (Tblproject) o;

        if (detail != null ? !detail.equals(that.detail) : that.detail != null) return false;
        if (endTime != null ? !endTime.equals(that.endTime) : that.endTime != null) return false;
        if (id != null ? !id.equals(that.id) : that.id != null) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (startTime != null ? !startTime.equals(that.startTime) : that.startTime != null) return false;
        if (status != null ? !status.equals(that.status) : that.status != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (detail != null ? detail.hashCode() : 0);
        result = 31 * result + (status != null ? status.hashCode() : 0);
        result = 31 * result + (startTime != null ? startTime.hashCode() : 0);
        result = 31 * result + (endTime != null ? endTime.hashCode() : 0);
        return result;
    }

    public List<Tbldocument> getTbldocumentsById() {
        return tbldocumentsById;
    }

    public void setTbldocumentsById(List<Tbldocument> tbldocumentsById) {
        this.tbldocumentsById = tbldocumentsById;
    }

    public List<Tbluser> getTblusersById() {
        return tblusersById;
    }

    public void setTblusersById(List<Tbluser> tblusersById) {
        this.tblusersById = tblusersById;
    }
}
