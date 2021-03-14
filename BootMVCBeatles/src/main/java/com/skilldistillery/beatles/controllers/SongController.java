package com.skilldistillery.beatles.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.beatles.data.SongDAO;

@Controller
public class SongController {

	@Autowired
	private SongDAO songDao;

	@RequestMapping(path = {"/", "home.do"})
	  public String index(Model model) {
		model.addAttribute("test", songDao.findById(1));
		 return "index";
	}
	
//	@RequestMapping(path="getFilm.do")
//	public String showFilm(Integer fid, Model model) {
//		Film film = filmDao.findById(fid);
//		model.addAttribute("film", film);
//		return "film/show";
//	}
	
	
	
	
	
}
