package com.skilldistillery.beatles.data;

import java.util.List;

import com.skilldistillery.beatles.entities.Song;

public interface SongDAO {

	// Create
	Song addSong(Song song);	
	// Read
	Song findById(int id);
	List<Song> findAll();
	// Update
	Song updateSong(Song song);
    // Destroy
	boolean destroySong(int id);  
	
}
