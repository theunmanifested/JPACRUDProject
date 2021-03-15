package com.skilldistillery.beatles.data;

import java.util.List;

import com.skilldistillery.beatles.entities.Song;

public interface SongDAO {

	List<Song> findAll();
	
	Song findById(int id);
//	
//	Song updateSong(int id, Song song);
//	
//	boolean destroySong(int id);
//	
//	Song addSong(Song song);
	
}
