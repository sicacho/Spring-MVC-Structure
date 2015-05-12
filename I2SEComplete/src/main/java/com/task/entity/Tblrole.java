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
public class Tblrole {
    @Id
    @Column(name = "id", nullable = false, insertable = true, updatable = true)
    @GeneratedValue
    private Integer id;
    @Basic
    @Column(name = "role", nullable = true, insertable = true, updatable = true, length = 45)
    private String role;
    @OneToMany(mappedBy = "tblroleByRole",fetch = FetchType.LAZY,orphanRemoval = true)
    @Cascade(org.hibernate.annotations.CascadeType.ALL)
    private List<Tblroleuser> tblroleusersById = new ArrayList<Tblroleuser>();


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Tblrole tblrole = (Tblrole) o;

        if (id != null ? !id.equals(tblrole.id) : tblrole.id != null) return false;
        if (role != null ? !role.equals(tblrole.role) : tblrole.role != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (role != null ? role.hashCode() : 0);
        return result;
    }


    public List<Tblroleuser> getTblroleusersById() {
        return tblroleusersById;
    }

    public void setTblroleusersById(List<Tblroleuser> tblroleusersById) {
        this.tblroleusersById = tblroleusersById;
    }
}
