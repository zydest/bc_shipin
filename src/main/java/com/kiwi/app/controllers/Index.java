package com.kiwi.app.controllers;

import com.kiwi.app.dao.ProductDao;
import com.kiwi.app.models.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@Component
public class Index {

	@Autowired
	protected ProductDao productDao;

	@RequestMapping( path = "/", method = RequestMethod.GET)
	public String welcome(ModelMap model, HttpServletRequest request) {

		List<Product> products = productDao.findNextPage(0, 10);
		model.put("products",products);
		return "welcome";
	}

	@RequestMapping( path = "/cards/page/{page}", method = RequestMethod.GET)
	public String page(ModelMap model, @PathVariable("page") int page) {

		int page_num = 10;
		if( page < 1 ) page = 1;

		int start = ( page -1 ) * page_num;
		List<Product> products = productDao.findNextPage(start, page_num);
		model.put("products",products);
		System.out.print("producst num is " + products.size());
		return "card";
	}

}