/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mine;

/**
 *
 * @author g_f
 */
import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.*;

public class product extends ActionForm{
    private double coffee_amount = 0;
    private double coffee_total = 0;
    
    private double sugar_amount = 0;
    private double sugar_total = 0;
    
    private double water_amount = 0;
    private double water_total = 0;
    
    public double total = 0;
    
    public void setcoffee_amount(double amount){
        this.coffee_amount = amount;
        this.coffee_total = amount * 18.5;
    }
    public void setsugar_amount(double amount){
        this.sugar_amount = amount;
        this.sugar_total = amount * 6.95;
    }
    public void setwater_amount(double amount){
        this.water_amount = amount;
        this.water_total = amount * 1.29;
    }
    
    public double getcoffee_amount(){
        return this.coffee_amount;
    }
    public double getsugar_amount(){
        return this.sugar_amount;
    }
    public double getwater_amount(){
        return this.water_amount;
    }
    
    public double getcoffee_total(){
        return this.coffee_total;
    }
    public double getsugar_total(){
        return this.sugar_total;
    }
    public double getwater_total(){
        return this.water_total;
    }
    public double gettotal(){
        total = coffee_total + sugar_total + water_total;
        return total;
    }
}
