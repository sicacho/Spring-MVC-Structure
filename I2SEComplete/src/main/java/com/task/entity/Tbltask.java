package com.task.entity;

import javax.persistence.*;
import java.sql.Date;

/**
 * Created by khangtnse60992 on 4/30/2015.
 */
@Entity
public class Tbltask {
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
    @Basic
    @Column(name = "approval", nullable = true, insertable = true, updatable = true)
    private Integer approval;
    @ManyToOne
    @JoinColumn(name = "creator", referencedColumnName = "id")
    private Tbluser tbluserByCreator;
    @ManyToOne
    @JoinColumn(name = "reviewer", referencedColumnName = "id")
    private Tbluser tbluserByReviewer;
    @ManyToOne
    @JoinColumn(name = "userTask", referencedColumnName = "id")
    private Tbluser tbluserByUserTask;
    @Transient
    private String statusString;

    public String getStatusString() {
        if(status==1) {
            statusString = "pending";
        } else if(status==2) {
            statusString = "starting";
        } else if(status==3) {
            statusString = "Wait review";
        } else if(status==4){
            statusString = "Reviewing";
        } else if(status==5) {
            statusString = "Wait Approval";
        } else {
            statusString = "Approval";
        }
        return statusString;
    }

    public void setStatusString(String statusString) {
        this.statusString = statusString;
    }

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


    public Integer getApproval() {
        return approval;
    }

    public void setApproval(Integer approval) {
        this.approval = approval;
    }

//    @Basic
//    @Column(name = "userTask", nullable = true, insertable = true, updatable = true)
//    public Integer getUserTask() {
//        return userTask;
//    }
//
//    public void setUserTask(Integer userTask) {
//        this.userTask = userTask;
//    }
//
//    @Basic
//    @Column(name = "creator", nullable = true, insertable = true, updatable = true)
//    public Integer getCreator() {
//        return creator;
//    }
//
//    public void setCreator(Integer creator) {
//        this.creator = creator;
//    }
//
//    @Basic
//    @Column(name = "reviewer", nullable = true, insertable = true, updatable = true)
//    public Integer getReviewer() {
//        return reviewer;
//    }
//
//    public void setReviewer(Integer reviewer) {
//        this.reviewer = reviewer;
//    }
//
//    @Override
//    public boolean equals(Object o) {
//        if (this == o) return true;
//        if (o == null || getClass() != o.getClass()) return false;
//
//        Tbltask tbltask = (Tbltask) o;
//
//        if (approval != null ? !approval.equals(tbltask.approval) : tbltask.approval != null) return false;
//        if (creator != null ? !creator.equals(tbltask.creator) : tbltask.creator != null) return false;
//        if (detail != null ? !detail.equals(tbltask.detail) : tbltask.detail != null) return false;
//        if (endTime != null ? !endTime.equals(tbltask.endTime) : tbltask.endTime != null) return false;
//        if (id != null ? !id.equals(tbltask.id) : tbltask.id != null) return false;
//        if (name != null ? !name.equals(tbltask.name) : tbltask.name != null) return false;
//        if (reviewer != null ? !reviewer.equals(tbltask.reviewer) : tbltask.reviewer != null) return false;
//        if (startTime != null ? !startTime.equals(tbltask.startTime) : tbltask.startTime != null) return false;
//        if (status != null ? !status.equals(tbltask.status) : tbltask.status != null) return false;
//        if (userTask != null ? !userTask.equals(tbltask.userTask) : tbltask.userTask != null) return false;
//
//        return true;
//    }

//    @Override
//    public int hashCode() {
//        int result = id != null ? id.hashCode() : 0;
//        result = 31 * result + (name != null ? name.hashCode() : 0);
//        result = 31 * result + (detail != null ? detail.hashCode() : 0);
//        result = 31 * result + (status != null ? status.hashCode() : 0);
//        result = 31 * result + (startTime != null ? startTime.hashCode() : 0);
//        result = 31 * result + (endTime != null ? endTime.hashCode() : 0);
//        result = 31 * result + (approval != null ? approval.hashCode() : 0);
//        result = 31 * result + (userTask != null ? userTask.hashCode() : 0);
//        result = 31 * result + (creator != null ? creator.hashCode() : 0);
//        result = 31 * result + (reviewer != null ? reviewer.hashCode() : 0);
//        return result;
//    }


    public Tbluser getTbluserByCreator() {
        return tbluserByCreator;
    }

    public void setTbluserByCreator(Tbluser tbluserByCreator) {
        this.tbluserByCreator = tbluserByCreator;
    }


    public Tbluser getTbluserByReviewer() {
        return tbluserByReviewer;
    }

    public void setTbluserByReviewer(Tbluser tbluserByReviewer) {
        this.tbluserByReviewer = tbluserByReviewer;
    }


    public Tbluser getTbluserByUserTask() {
        return tbluserByUserTask;
    }

    public void setTbluserByUserTask(Tbluser tbluserByUserTask) {
        this.tbluserByUserTask = tbluserByUserTask;
    }
}
