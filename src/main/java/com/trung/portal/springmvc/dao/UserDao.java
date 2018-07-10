/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.trung.portal.springmvc.dao;

import com.trung.portal.springmvc.model.User;
import java.util.List;

/**
 *
 * @author trung Jun 2, 2018 2:23:47 PM
 */
public interface UserDao {

    User findById(int id);

    User findBySSO(String sso);

    void save(User user);

    void deleteBySSO(String sso);

    List<User> findAllUsers();

}
