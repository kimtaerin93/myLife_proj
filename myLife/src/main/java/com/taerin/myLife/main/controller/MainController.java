package com.taerin.myLife.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.taerin.myLife.main.entity.Menu;
import com.taerin.myLife.main.repository.MenuRepository;

@Controller
@RequestMapping("/main")
public class MainController {

	@Autowired
	private MenuRepository menuRepository;
	
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/main")
	public String main(Model model) {
		List<Menu> menu = menuRepository.findAll();
		model.addAttribute("menu", menu);
		return "main";
	}
	
}
