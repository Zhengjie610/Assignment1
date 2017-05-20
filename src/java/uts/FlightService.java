/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts;

/**
 *
 * @author Administrator
 */
public interface FlightService {
    public Flight search(String origin, String destination, String departure, String returnd);    
}
