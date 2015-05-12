package com.task.entity;

import javax.persistence.*;

/**
 * Created by khangtnse60992 on 4/30/2015.
 */
@Entity
public class Tblroleuser {
    @Id
    @GeneratedValue
    @Column(name = "id", nullable = false, insertable = true, updatable = true)
    private Integer id;
    @ManyToOne
    @JoinColumn(name = "role", referencedColumnName = "id")
    private Tblrole tblroleByRole;
    @ManyToOne
    @JoinColumn(name = "tbluser", referencedColumnName = "id")
    private Tbluser tbluserByTbluser;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


//    public Integer getTbluser() {
//        return tbluser;
//    }
//
//    public void setTbluser(Integer tbluser) {
//        this.tbluser = tbluser;
//    }
//
//
//    public Integer getRole() {
//        return role;
//    }
//
//    public void setRole(Integer role) {
//        this.role = role;
//    }
//
//    @Override
//    public boolean equals(Object o) {
//        if (this == o) return true;
//        if (o == null || getClass() != o.getClass()) return false;
//
//        Tblroleuser that = (Tblroleuser) o;
//
//        if (id != null ? !id.equals(that.id) : that.id != null) return false;
//        if (role != null ? !role.equals(that.role) : that.role != null) return false;
//        if (tbluser != null ? !tbluser.equals(that.tbluser) : that.tbluser != null) return false;
//
//        return true;
//    }
//
//    @Override
//    public int hashCode() {
//        int result = id != null ? id.hashCode() : 0;
//        result = 31 * result + (tbluser != null ? tbluser.hashCode() : 0);
//        result = 31 * result + (role != null ? role.hashCode() : 0);
//        return result;
//    }


    public Tblrole getTblroleByRole() {
        return tblroleByRole;
    }

    public void setTblroleByRole(Tblrole tblroleByRole) {
        this.tblroleByRole = tblroleByRole;
    }


    public Tbluser getTbluserByTbluser() {
        return tbluserByTbluser;
    }

    public void setTbluserByTbluser(Tbluser tbluserByTbluser) {
        this.tbluserByTbluser = tbluserByTbluser;
    }
}
