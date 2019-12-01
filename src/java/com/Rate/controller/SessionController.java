/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.Rate.controller;

import com.Rate.Entite.Utilisateur;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Joseph
 */
@Controller
@SessionAttributes("personObj")
public class SessionController {
    
   @RequestMapping(value="/signin.htm")
    public ModelAndView userPage() {
        return new ModelAndView("user-page", "user-entity", new Utilisateur());
    }
    @RequestMapping(value="/index.htm")
    public ModelAndView IndexPerson(@ModelAttribute Utilisateur person) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("index");
        modelAndView.addObject("pers", person);
        modelAndView.addObject("personObj", person);
        return modelAndView;
    }
}
