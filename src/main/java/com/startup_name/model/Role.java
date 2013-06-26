package com.startup_name.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.NotEmpty;

/**
 * Class describes POJO of role entity.
 */
@Entity
@Table(name = "ROLES")
public class Role {

    public static final Role ANONYMOUS = new Role(1, "ROLE_ANONYMOUS");
    public static final Role ADMINISTRATOR = new Role(2, "ROLE_ADMINISTRATOR");

    @Column(name = "role_id")
    @Id
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