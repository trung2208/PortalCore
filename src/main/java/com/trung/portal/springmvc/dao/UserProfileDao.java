/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.trung.portal.springmvc.dao;

import com.trung.portal.springmvc.model.UserProfile;
import java.util.List;

/**
 *
 * @author trung
 * Jun 2, 2018 2:25:34 PM
 */
 
public interface UserProfileDao {
 
    List<UserProfile> findAll();
     
    UserProfile findByType(String type);
     
    UserProfile findById(int id);
}
