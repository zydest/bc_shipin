package com.kiwi.app.controllers;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.kiwi.app.dao.ProductDao;
import com.kiwi.app.dao.UserDao;
import com.kiwi.app.models.Product;
import com.kiwi.app.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by yue on 17/6/26.
 */
@RestController
@EnableAsync
@Component
public class App {

    @Autowired
    @Qualifier("adsJdbcTemplate")
    protected JdbcTemplate mysql;

    @Autowired
    protected UserDao userDao;

    @Autowired
    protected ProductDao productDao;

    /**
     * GET /create  --> Create a new user and save it in the database.
     */
    @RequestMapping("/create")
    @ResponseBody
    public String create( String name) {
        String userId = "";
        try {
            User user = new User( name);
            userDao.save(user);
            userId = String.valueOf(user.getId());
        }
        catch (Exception ex) {
            return "Error creating the user: " + ex.toString();
        }
        return "User succesfully created with id = " + userId;
    }


    @RequestMapping(value = "/product/list", method = RequestMethod.GET)
    public String queryDashboard() {

        List<Product> products = productDao.findNextPage(0, 1);

        ObjectMapper mapper = new ObjectMapper();
        try {
            return mapper.writeValueAsString(products);
        } catch (Exception ex) {
            ex.printStackTrace();
            return "error";
        }
    }
}
