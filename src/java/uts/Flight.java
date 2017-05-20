/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts;

/**
 *
 * @author 41815
 */
/*
import java.text.DateFormat;
import java.text.SimpleDateFormat;
*/

public class Flight {
    private String id;
    private String departure;
    private String returnd;
    private String price;
    private String origin;
    private String destination;
    private String type;
    private String seats;
    
    public Flight() {
    }

    public Flight(String id, String departure, String returnd, String price, String origin, String destination, String type, String seats) {
        this.id = id;
        this.departure = departure;
        this.returnd = returnd;
        this.price = price;
        this.origin = origin;
        this.destination = destination;
        this.type = type;
        this.seats = seats;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDeparture() {
        return departure;
    }

    public void setDeparture(String departure) {
        this.departure = departure;
    }
/*    
    public void setDeparture(String departure) {
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm");
        try {
            Date dt1 = df.parse(departure);
            this.departure = dt1;
        } catch (Exception exception) {
            exception.printStackTrace();
            this.departure = null;
        }        
    }
*/    
    public String getReturnd() {
        return returnd;
    }

    public void setReturnd(String returnd) {
        this.returnd = returnd;
    }
/*    
    public void setReturnd(String returnd) {
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm");
        try {
            Date dt1 = df.parse(returnd);
            this.returnd = dt1;
        } catch (Exception exception) {
            exception.printStackTrace();
            this.returnd = null;
        }        
    }
*/    
    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getSeats() {
        return seats;
    }

    public void setSeats(String seats) {
        this.seats = seats;
    }
}
