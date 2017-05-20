/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts;
import java.io.*;

import javax.xml.bind.*;
/**
 *
 *
 */
public class FlightApplication implements Serializable {
    
    private String filePath;
    private Flights flights;
    
     public FlightApplication() {
        // TODO Auto-generated constructor stub
    }

    public FlightApplication(String filePath, Flights flights) {
        super();
        this.filePath = filePath;
        this.flights = flights;
    }
    
     public void setFilePath(String filePath) throws Exception {

        // Create the unmarshaller
        JAXBContext jc = JAXBContext.newInstance(Flights.class);
        Unmarshaller u = jc.createUnmarshaller();

        this.filePath = filePath;
        // Now unmarshal the object from the file
        FileInputStream fin = new FileInputStream(filePath);
        flights = (Flights) u.unmarshal(fin); 		
        fin.close();

    }
    public void updateXML(Flights flights, String filePath) throws Exception {
        this.flights = flights;
        this.filePath = filePath;
        JAXBContext jc = JAXBContext.newInstance(Flights.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(flights, fout);
        fout.close();
    }
    
    // For the advanced step, you might consider adding a saveStudents() method here
    // to be used from the welcome.jsp page
    public void saveFlights() throws JAXBException, IOException {
        JAXBContext jc = JAXBContext.newInstance(Flights.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(flights, fout);
        fout.close();
    }

    public Flights getFlights() {
        return flights;
    }

    public void setFlights(Flights flights) {
        this.flights = flights;
    }

}
