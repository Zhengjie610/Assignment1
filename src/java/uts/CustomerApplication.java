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
public class CustomerApplication implements Serializable {
    
    private String filePath;
    private Customers customers;
    
     public CustomerApplication() {
        // TODO Auto-generated constructor stub
    }

    public CustomerApplication(String filePath, Customers customers) {
        super();
        this.filePath = filePath;
        this.customers = customers;
    }
    
     public void setFilePath(String filePath) throws Exception {

        // Create the unmarshaller
        JAXBContext jc = JAXBContext.newInstance(Customers.class);
        Unmarshaller u = jc.createUnmarshaller();

        this.filePath = filePath;
        // Now unmarshal the object from the file
        FileInputStream fin = new FileInputStream(filePath);
        customers = (Customers) u.unmarshal(fin); 		
        fin.close();

    }
    public void updateXML(Customers customers, String filePath) throws Exception {
        this.customers = customers;
        this.filePath = filePath;
        JAXBContext jc = JAXBContext.newInstance(Customers.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(customers, fout);
        fout.close();
    }
    
    // For the advanced step, you might consider adding a saveStudents() method here
    // to be used from the welcome.jsp page
    public void saveCustomers() throws JAXBException, IOException {
        JAXBContext jc = JAXBContext.newInstance(Customers.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(customers, fout);
        fout.close();
    }

    public Customers getCustomers() {
        return customers;
    }

    public void setCustomers(Customers customers) {
        this.customers = customers;
    }

}
