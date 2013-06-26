package com.startup_name.model;

import javax.persistence.*;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * Class describes POJO of user entity.
 */
@Entity
@Table(name = "USERS")
public class User {

    @Column(name = "user_id")
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int userId;

    @Column(name = "username")
    @NotEmpty
    private String username;

    @Column(name = "password")
    @NotEmpty
    private String password;

    @JoinColumn(name = "role_id")
    @ManyToOne
    @Valid
    @NotNull
    private Role role;

    @Column(name = "enabled")
    @NotNull
    private boolean enabled;

    public User(){
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
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

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

}