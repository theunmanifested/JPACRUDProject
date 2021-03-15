package com.skilldistillery.beatles.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.beatles.data.SongDAO;
import com.skilldistillery.beatles.entities.Song;

@Controller
public class SongController {

	@Autowired
	private SongDAO dao;

	@RequestMapping(path = { "/", "home.do" })
	public String index(Model model) {		
		return "index";
	}

//	Read - Find Song by Id or Track Number
	@RequestMapping(path = "getSong.do")
	public String showSong(Integer fid, Model model) {
		Song song = dao.findById(fid);
		model.addAttribute("song", song);
		return "song/showSong";
	}
	// display all of the songs

	@RequestMapping(path = { "getAllSongs.do" })
	public String getAllSongs(Model model) {
		List<Song> songs = dao.findAll();
		model.addAttribute("songList", songs);
		return "song/showAllSongs";
	}

}
