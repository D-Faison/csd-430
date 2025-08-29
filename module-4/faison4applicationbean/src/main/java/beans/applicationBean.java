/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package beans;
/*DeJanae Faison
*M4 Job Application with Beans Due 8.31.25
*/
/*Java Bean*/
public class applicationBean implements java.io.Serializable{
    /*Job Application Variables*/
    private String firstName;
    private String lastName;
    
    public applicationBean(){}
    
    /*Setters and Getters*/
    /*Name*/
    public String getFirstName(){
        return firstName;
    }
    
    public void setFirstName(String firstName){
        this.firstName = firstName;
    }
    
    public String getLastName(){
        return lastName;
    }
    
    public void setLastName(String lastName){
        this.lastName = lastName;
    }
}
