package com.skilldistillery.beatles.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Song {
	@Id
	private int id;
	@Column(name="track_name")
	private String trackName;  // prob change it to trackName and @Colum

	public Song() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTrackName() {
		return trackName;
	}

	public void setTrackName(String trackName) {
		this.trackName = trackName;
	}

	@Override
	public String toString() {
		return "Song [id=" + id + ", trackName=" + trackName + "]";
	}

	
}
