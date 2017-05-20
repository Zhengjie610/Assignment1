/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import javax.xml.bind.annotation.*;
import java.util.ArrayList;
import java.util.Date;
import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.jws.WebService;

/**
 *
 * 
 */

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "flights")
public class Flights implements Serializable {

    @XmlElement(name = "flight")
    private ArrayList<Flight> list = new ArrayList<>();

    public ArrayList<Flight> getList() {
        return list;
    }

    public void addFlights(Flight flight) {
        list.add(flight);
    }

    public void removeFlights(Flight flight) {
        list.remove(flight);
    }

    public Flight getFlight(String id) {
        for (Flight flight : list) {
            if (flight.getId().equals(id) ) {
                return flight;
            }
        }
        return null;
    }
    
    public static int compare_date(String DATE1, String DATE2) {
        DateFormat df1 = new SimpleDateFormat("dd-MM-yyyy");
        DateFormat df2 = new SimpleDateFormat("yyyy-MM-dd");        
        try {
            Date dt1 = df1.parse(DATE1);
            Date dt2 = df2.parse(DATE2);
            if (dt1.getTime() > dt2.getTime()) {
                return 1;
            } else if (dt1.getTime() < dt2.getTime()) {
                return -1;
            } else {
                return 0;
            }
        } catch (Exception exception) {
            exception.printStackTrace();
        }
        return 0;
    }
    
    public static int compare_date(Date dt1, Date dt2) {
        try {
            if (dt1.getTime() > dt2.getTime()) {
                return 1;
            } else if (dt1.getTime() < dt2.getTime()) {
                return -1;
            } else {
                return 0;
            }
        } catch (Exception exception) {
            exception.printStackTrace();
        }
        return 0;
    }
}
