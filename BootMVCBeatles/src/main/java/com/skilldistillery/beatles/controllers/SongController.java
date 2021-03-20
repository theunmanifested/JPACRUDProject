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

	// Create

	@RequestMapping(path = "addASong.do")
	public String addASong(Song song, Model model) {
		song = dao.addSong(song);
		model.addAttribute("song", song);
		return "song/addedSong";
	}

	@RequestMapping(path = "addASongForm.do")
	public String addASongForm(Song song, Model model) {
		model.addAttribute("song", song);
		return "song/addASongForm";
	}

	// Read

	@RequestMapping(path = "getSong.do")
	public String showSong(Integer fid, Model model) {
		Song song = dao.findById(fid);
		model.addAttribute("song", song);
		return "song/showSong";
	}

	@RequestMapping(path = { "getAllSongs.do" })
	public String getAllSongs(Model model) {
		List<Song> songs = dao.findAll();
		model.addAttribute("songList", songs);
		return "song/showAllSongs";
	}

	// Update

	@RequestMapping(path = "updateASongForm.do")
	public String updateSongForm(int id, Model model) {
		Song uSong = dao.findById(id);
		model.addAttribute("song", uSong);
		return "song/updateASong";
	}

	@RequestMapping(path = "updatedSong.do")
	public String updateSong(int id, Song song, Model model) {
		Song uSong = dao.updateSong(song);
		model.addAttribute("song", uSong);
		return "song/updatedSong";
	}

	// Destroy
	
	@RequestMapping(path = "destroySong.do")
	public String destroySong(int id, Model model) {
		boolean wasDestroyed = dao.destroySong(id);
		model.addAttribute("wasDestroyed", wasDestroyed);
		return "song/destroyedSong";
	}
	
}
