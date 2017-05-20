/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts;

import javax.annotation.Resource;
import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;

/**
 *
 * @author Administrator
 */

@WebService(targetNamespace = "http://www.uts.edu.au/31284/wsd-flights", name = "flightService", serviceName = "flightService")
@Stateless
@Remote(FlightService.class)

public class FlightServiceImpl implements FlightService {
  
    
    private Flights flights; 
    
    @WebResult(name="return",targetNamespace="http://www.uts.edu.au/31284/wsd-flights")
    @WebMethod
    public Flight search(@WebParam(name = "origin",targetNamespace="http://www.uts.edu.au/31284/wsd-flights")String origin, 
            @WebParam(name = "destination",targetNamespace="http://www.uts.edu.au/31284/wsd-flights")String destination, 
            @WebParam(name = "departure",targetNamespace="http://www.uts.edu.au/31284/wsd-flights")String departure, 
            @WebParam(name = "returnd",targetNamespace="http://www.uts.edu.au/31284/wsd-flights")String returnd) {
        // For each Flights in the list...
        if(origin==null||destination==null||departure==null||returnd==null)return null;
        if(origin.isEmpty()||destination.isEmpty()||departure.isEmpty()||returnd.isEmpty())return null;
        if(flights == null)return null;
        for (Flight flight : flights.getList()) {
            if ((flight.getOrigin().equals(origin))  && (flight.getDestination().equals(destination)) && 
                    (Flights.compare_date(flight.getDeparture(), departure)==0) && (Flights.compare_date(flight.getReturnd(), returnd)==0)) {
                return flight; // available flight
            }
        }
        return null; // Login incorrect. Return null.
    }  
    
    public Flights getFlights() {
        return flights;
    }

    public void setFlights(Flights flights) {
        this.flights = flights;
    }    
}
