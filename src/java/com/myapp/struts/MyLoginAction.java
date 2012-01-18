/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.struts;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author g_f
 */
public class MyLoginAction extends Action{
    private static final String SUCCESS = "success";
    private static final String FAIL = "fail";
    
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        // extract user data
        login formBean = (login) form;
        String name = formBean.getname();
        String email = formBean.getemail();
        
        if ((name == null) || email == null || name.equals("") || email.indexOf("@") == -1) {   
            formBean.seterror();
            return mapping.findForward(FAIL);
        }
        return mapping.findForward(SUCCESS);
    }
}
