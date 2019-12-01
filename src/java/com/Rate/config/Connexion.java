/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.Rate.config;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 *
 * @author Joseph
 */
public class Connexion {
    public DriverManagerDataSource Connector(){
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3306/rateteachers?zeroDateTimeBehavior=convertToNull");
        dataSource.setUsername("root");
        dataSource.setPassword(null);
        return dataSource;
}
    
}
