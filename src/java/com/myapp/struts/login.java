/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.struts;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.*;

/**
 *
 * @author g_f
 */
public class login extends ActionForm{
    private String name;
    private String email;
    private String error;
    
    public void setname(String string){
        name = string;
    }
    public void setemail(String email){
        this.email = email;
    }
    public void seterror() {
    this.error =
        "<span>Error! Please check again your info!</span>";
    }
    
    public String getname(){
        return name;
    }
    public String getemail(){
        return email;
    }
    public String geterror(){
        return error;
    }
    
    public login() {
        super();
    }
}
