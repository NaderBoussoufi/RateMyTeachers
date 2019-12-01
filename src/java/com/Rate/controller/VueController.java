 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.Rate.controller;
import com.Rate.Entite.Compte;
import com.Rate.Entite.Professeur;
import com.Rate.Entite.Utilisateur;
import com.Rate.config.Connexion;
import java.util.List;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.support.HttpRequestHandlerServlet;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Joseph
 */
@Controller
public class VueController {
    int id,notes;
    String prenom,school;
    Connexion con=new Connexion();
    JdbcTemplate jt = new JdbcTemplate(con.Connector());
    ModelAndView mav = new ModelAndView();
    @RequestMapping("/index.htm")
    public ModelAndView Accueil(){
        mav.setViewName("index");
        return mav;
    }
    @RequestMapping("/indexlog.htm")
    public ModelAndView AccueilLog(){
        mav.setViewName("indexlog");
        return mav;
    }
    @RequestMapping("/find_professor.htm")
    public ModelAndView FindProf(){
        mav.setViewName("find_professor");
        return mav;
    }
        @RequestMapping("/find_professor_by_school.htm")
    public ModelAndView FindProfbyschool(){
        mav.setViewName("find_professor_by_school");
        return mav;
    }
    @RequestMapping("/rate_professor.htm")
    public ModelAndView RateProf(){
        mav.setViewName("rate_professor");
        return mav;
    }
    @RequestMapping(value = "/signin.htm", method = RequestMethod.GET)
    public ModelAndView SignIn(ModelMap modelMap,HttpSession session,HttpServletRequest request){
        Compte cpt=checkCookie(request);
         mav.setViewName("signin");
        if(cpt==null){
            modelMap.put("compte", new Compte());
            return mav;
        }
        else{
            session.setAttribute("email", cpt.getEmail());
            return mav;
        }
    }
    
    @RequestMapping(value = "/signin.htm",method = RequestMethod.POST)
    public ModelAndView SignIn(@ModelAttribute(value = "account") Compte compte, ModelMap modelMap, 
            HttpSession session  ,HttpServletRequest request,HttpServletResponse response){
        
        /*String mail=request.getParameter("email");
        String pwd=request.getParameter("password");
        String sql="SELECT firstname,lastname FROM Utilisateur WHERE email='"+mail+"' AND password="+pwd;
       
        List loginList=this.jt.queryForList(sql);
        mav.addObject("Listlogin", loginList);*/
       String sql="SELECT firstname FROM Utilisateur WHERE email='"+compte.getEmail()+"' AND password='"+compte.getPassword()+"';";
       String usrname=this.jt.queryForObject(sql, new Object[] {}, String.class);
       session.setAttribute("email", usrname);
       Cookie cUser = new Cookie("email", compte.getEmail());
       cUser.setMaxAge(3600);
       response.addCookie(cUser);
       Cookie cPass = new Cookie("email", compte.getPassword());
       cPass.setMaxAge(3600);
       response.addCookie(cPass);
       return new ModelAndView("redirect:index.htm");
    }
    @RequestMapping(value = "logout.htm", method = RequestMethod.GET)
    public ModelAndView SignIn(HttpSession session,HttpServletRequest request,HttpServletResponse response){
       session.removeAttribute("email");
       for(Cookie c : request.getCookies()){
           if(c.getName().equalsIgnoreCase("email")){
               c.setMaxAge(0);
               response.addCookie(c);
           }
            if(c.getName().equalsIgnoreCase("password")){
               c.setMaxAge(0);
               response.addCookie(c);
           }
       }
       return new ModelAndView("redirect:signin.htm");
    }
    public Compte checkCookie(HttpServletRequest request){
        Cookie[] cookies = request.getCookies();
        Compte compte = null;
        String email="",password="";
        for(Cookie c : cookies){
            if(c.getName().equalsIgnoreCase("email"))
                email=c.getValue();
            if(c.getName().equalsIgnoreCase("password"))
                password=c.getValue();
        }
        if(!email.isEmpty()&&!password.isEmpty())
            compte=new Compte(email,password);
        return compte;
    }
    
    @RequestMapping(value ="/signup.htm", method = RequestMethod.GET)
    public ModelAndView SignUp(){
        mav.addObject(new Utilisateur());
        mav.setViewName("signup");
        return mav;
    }
    @RequestMapping(value ="/signup.htm", method = RequestMethod.POST)
    public ModelAndView SignUp(Utilisateur u){
       String sql="insert into utilisateur(email,emailconfirm,password,passwordconfirm,firstname,lastname,school)values(?,?,?,?,?,?,?)";
        //String sql="insert into utilisateur(email,emailconfirm,password,passwordconfirm,firstname,lastname,school)VALUES('"+u.getEmail()+"','"+u.getEmailconfirm()+"','"+u.getPassword()+"','"+u.getPasswordconfirm()+"','"+u.getFirstname()+"','"+u.getLastname()+"','"+u.getSchool()+"')";
       this.jt.update(sql,u.getEmail(),u.getEmailconfirm(),u.getPassword(),u.getPasswordconfirm(),u.getFirstname(),u.getLastname(),u.getSchool());
       //this.jt.update(sql);
        return new ModelAndView("redirect:/signin.htm");
    }
    @RequestMapping(value="/rate.htm",method = RequestMethod.GET)
     public ModelAndView Rate(Professeur p){
        mav.setViewName("rate");
        return mav;
    }
     @RequestMapping(value="/rate.htm", method = RequestMethod.POST)
     public ModelAndView Rate(HttpServletRequest request){
        prenom = request.getParameter("prenom");
        String sql1 ="select * from professeur where  prenom ='"+prenom+"';";
        List data1 = this.jt.queryForList(sql1);
        mav.addObject("teachers1", data1);
        //mav.setViewName("rate");
        int note =Integer.parseInt(request.getParameter("note")); 
        int note1 =Integer.parseInt(request.getParameter("note1"));
        int note2 =Integer.parseInt(request.getParameter("note2"));
        int note3 =Integer.parseInt(request.getParameter("note3"));
        int note4 =Integer.parseInt(request.getParameter("note4"));
        int note5 =Integer.parseInt(request.getParameter("note5"));
        int note6 =Integer.parseInt(request.getParameter("note6"));
        int note7 =Integer.parseInt(request.getParameter("note7"));
        int note8 =Integer.parseInt(request.getParameter("note8"));
        //prenom = request.getParameter("prenom");
        notes =(note + note1+ note2 + note3 + note4 + note5 + note6 + note7 + note8)/9 ;
        this.jt.update("update professeur set note='"+notes+"' where prenom='"+prenom+"';");
        return new ModelAndView("redirect:index.htm");
    }
     
      @RequestMapping(value="/edit_teacher.htm", method = RequestMethod.GET )
     public ModelAndView Edit(HttpServletRequest request){
        id = Integer.parseInt(request.getParameter("id"));
        String sql ="select * from professeur where id="+id;
        List data = this.jt.queryForList(sql);
        mav.addObject("teachers", data);
        mav.setViewName("edit_teacher");
        return mav;
    
    }
    
     @RequestMapping("/teachers_table.htm")
     public ModelAndView TeachersTable(){
        
        String sql ="select * from professeur";
        List data = this.jt.queryForList(sql);
        mav.addObject("teachers", data);
        mav.setViewName("teachers_table");
        return mav;
        
    }
     @RequestMapping(value="/edit_teacher.htm", method = RequestMethod.POST)
     public ModelAndView Update(Professeur p){
        //String sql ="update teachers set firstname=?,lastname=?,experience=?,age=? where id="+id;
       // this.jt.update(sql,t.getFirstname(),t.getLastname(),t.getExperience(),t.getAge());        
        this.jt.update("update professeur set prenom='"+p.getPrenom()+"',nom='"+p.getNom()+"',matiere='"+p.getMatiere()+"',experience='"+p.getExperience()+"',note='"+p.getNote()+"',ecole='"+p.getEcole()+"' where id="+id );

        return new ModelAndView("redirect:teachers_table.htm");
        
    }
   @RequestMapping(value="/add_teacher.htm", method= RequestMethod.GET)
    public ModelAndView Add (){

       mav.setViewName("add_teachers");
    return mav;
        
    }
   @RequestMapping(value="add_teacher.htm", method=RequestMethod.POST)
    public ModelAndView Add (Professeur p){
         //this.jt.update("insert into  teachers(firstname,lastname,experience,age) value ('"+t.getFirstname()+"','"+t.getLastname()+"','"+t.getExperience()+"','"+t.getAge());
       String sql="insert into  professeur(nom,prenom,matiere,experience,ecole) values(?,?,?,?,?)";
       this.jt.update(sql,p.getNom(),p.getPrenom(),p.getMatiere(),p.getExperience(),p.getEcole());
     
        return new ModelAndView("redirect:/teachers_table.htm");
        
    }
     @RequestMapping("delete_teacher.htm")
     public ModelAndView Delete(HttpServletRequest request){
         id = Integer.parseInt(request.getParameter("id"));
         String sql="delete from professeur where id="+id;
        this.jt.update(sql);

        return new ModelAndView("redirect:/teachers_table.htm");
        
    }
     @RequestMapping(value="search_result.htm", method= RequestMethod.GET)
     public ModelAndView search_result(HttpServletRequest request){
        //nom = request.getParameter("nom").toString().trim();
        school = request.getParameter("ecole");
        String sql ="select * from professeur where  ecole ='"+school+"';";
         //id = Integer.parseInt(request.getParameter("id"));
         //String sql ="select * from professeur where id="+id;
        List data = this.jt.queryForList(sql);
        mav.addObject("teachers", data);
        prenom = request.getParameter("prenom");
        String sql1 ="select * from professeur where  prenom ='"+prenom+"';";
        List data1 = this.jt.queryForList(sql1);
        mav.addObject("teachers1", data1);
        mav.setViewName("search_result");
        return mav; 
    }
    @RequestMapping("/user_table.htm")
    public ModelAndView User (){
        String sql ="select * from utilisateur";
        List data = this.jt.queryForList(sql);
        mav.addObject("Listlogin", data);
        mav.setViewName("teachers_table");
       mav.setViewName("user_table");
    return mav;
        
    }

     @RequestMapping("delete_user.htm")
     public ModelAndView DeleteUser(HttpServletRequest request){
         id = Integer.parseInt(request.getParameter("id"));
         String sql="delete from utilisateur where id="+id;
        this.jt.update(sql);

        return new ModelAndView("redirect:/user_table.htm");
        
    } 
    
}
