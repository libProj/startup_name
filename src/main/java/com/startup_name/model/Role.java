package com.startup_name.model;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.Size;

/**
 * Class describes POJO of role entity.
 */
@Entity
@Table(name = "ROLES")
public class Role {

    public static final Role ANONIMOUS = new Role(0, "ROLE_ANONIMOUS");
    public static final Role ADMINISTRATOR = new Role(1, "ROLE_ADMINISTRATOR");

    @Column(name = "role_id")
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int roleId;

    @Column(name = "role_name")
    @NotEmpty
    @Size(max = 30)
    private String roleName;

    public Role() {

    }

    private Role(Integer roleId, String roleName) {
        this.roleId = roleId;
        this.roleName = roleName;
    }

    public int getRoleId() {
        return roleId;
    }

    public String getRoleName() {
        return roleName;
    }

}