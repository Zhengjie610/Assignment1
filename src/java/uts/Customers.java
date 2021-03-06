/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts;

import java.io.Serializable;
import javax.xml.bind.annotation.*;
import java.util.ArrayList;

/**
 *
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "customers")
public class Customers implements Serializable {

    @XmlElement(name = "customer")
    private ArrayList<Customer> list = new ArrayList<>();

    public ArrayList<Customer> getList() {
        return list;
    }

    public void addCustomers(Customer customer) {
        list.add(customer);
    }

    public void removeCustomers(Customer customer) {
        list.remove(customer);
    }

    public Customer getCustomer(String email) {
        for (Customer customer : list) {
            if (customer.getEmail().equals(email) ) {
                return customer;
            }
        }
        return null;
    }

    public Customer login(String email, String password) {
        // For each Customers in the list...
        for (Customer customer : list) {
            if (customer.getEmail().equals(email)  & customer.getPassword().equals(password)) {
                return customer; // Login correct. Return this Customers.
            }
        }
        return null; // Login incorrect. Return null.
    }
}
