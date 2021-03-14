package com.skilldistillery.beatles.data;

import com.skilldistillery.beatles.entities.Song;

public interface SongDAO {

	public Song findById(int id);
	
}
