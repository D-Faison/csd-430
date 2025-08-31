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
    private String email;
    private String phoneNumber;
    private String website;
    private String desiredPosition;
    
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
    
    /*Email*/
    public String getEmail(){
        return email;
    }
    
    public void setEmail(String email){
        this.email =  email;
    }
    
    /*Phone*/
    public String getPhoneNumber(){
        return phoneNumber;
    }
    
    public void setPhoneNumber(String phoneNumber){
        this.phoneNumber = phoneNumber;
    }
    
    /*Webiste*/
    public String getWebsite(){
        return website;
    }
    
    public void setWebsite(String website){
        this.website = website;
    }
    
    /*Desired Position*/
    public String getDesiredPosition(){
        return desiredPosition;
    }
    
    public void setDesiredPosition(String desiredPosition){
        this.desiredPosition = desiredPosition;
    }
}
