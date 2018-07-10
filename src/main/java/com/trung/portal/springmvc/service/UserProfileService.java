/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.trung.portal.springmvc.service;

import com.trung.portal.springmvc.model.UserProfile;
import java.util.List;

/**
 *
 * @author trung
 * Jun 2, 2018 2:30:15 PM
 */
 
 
public interface UserProfileService {
 
    UserProfile findById(int id);
 
    UserProfile findByType(String type);
     
    List<UserProfile> findAll();
     
}
