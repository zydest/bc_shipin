package com.kiwi.app.controllers;

import com.kiwi.app.dao.ProductDao;
import com.kiwi.app.models.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
@Component
public class Index {

	@Autowired
	protected ProductDao productDao;

	@RequestMapping( path = "/", method = RequestMethod.GET)
	public String welcome(ModelMap model, HttpServletRequest request) {

		List<Product> products = productDao.findTop10(0, 10);
		model.put("products",products);
		return "welcome";
	}

}