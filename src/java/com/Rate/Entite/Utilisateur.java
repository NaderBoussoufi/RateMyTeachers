/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.Rate.Entite;

/**
 *
 * @author Joseph
 */
public class Utilisateur {
    int id;
    String email;
    String emailconfirm;
    String password;
    String passwordconfirm;
    String firstname;
    String lastname;
    String school;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmailconfirm() {
        return emailconfirm;
    }

    public void setEmailconfirm(String emailconfirm) {
        this.emailconfirm = emailconfirm;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPasswordconfirm() {
        return passwordconfirm;
    }

    public void setPasswordconfirm(String passwordconfirm) {
        this.passwordconfirm = passwordconfirm;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

   
    
}
