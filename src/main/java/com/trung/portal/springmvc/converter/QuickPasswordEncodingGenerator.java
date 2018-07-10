/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.trung.portal.springmvc.converter;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
/**
 *
 * @author trung
 * Jun 2, 2018 2:32:03 PM
 */
  
  
public class QuickPasswordEncodingGenerator {
  
    /**
     * @param args
     */
    public static void main(String[] args) {
            String password = "abc125";
            BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
            System.out.println(passwordEncoder.encode(password));
    }
  
}
