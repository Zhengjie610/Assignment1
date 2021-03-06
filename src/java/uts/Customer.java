/*
 * Author: George
 */
package uts;

import java.io.*;

/**
 *
 * @author George
 */
public class Customer implements Serializable {

    private String name;
    private String email;
    private String password;
    private String birthday;

    public Customer() {
    }

    public Customer(String name, String email, String password, String birthday) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.birthday = birthday;
    }
    
    public Customer(String email, String password) {
       
        this.email = email;
        this.password = password;
       
    }
  

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getBirthday() {
        return birthday;
    }

}
