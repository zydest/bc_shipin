package com.kiwi.app.controllers;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.kiwi.app.bean.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

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

    @RequestMapping(value = "/product/list", method = RequestMethod.GET)
    public String queryDashboard() {

        Response res = new Response();

        try {
            String sql_str = "select * from product";
            List<Map<String, Object>> data = mysql.queryForList(sql_str);
            res.setData(data);
            res.setStatus(200);
            ObjectMapper mapper = new ObjectMapper();
            return mapper.writeValueAsString(res);
        } catch (Exception e) {
            res.setMessage("处理错误，请联系管理员");
            res.setStatus(500);
            ObjectMapper mapper = new ObjectMapper();
            try {
                return mapper.writeValueAsString(res);
            } catch (Exception ex) {
                ex.printStackTrace();
                return "error";
            }

        }
    }
}
