package com.skilldistillery.beatles.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Song {
	
	@Id
	private int id;  // primary key
	
	@Column(name="track_name")
	private String trackName;  
	
	@Column(name="written_by")
	private String writtenBy;
	
	private String length;
	
	private String album;
	
	@Column(name="has_ringo")
	private String hasRingo;
	
	@Column(name="date_recorded")
	private String dateRecorded;
	
	@Column(name="main_singer")
	private String mainSinger;
	
	@Column(name="album_version")
	private String albumVersion;
	
	// no-arg constructor
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

	public String getWrittenBy() {
		return writtenBy;
	}

	public void setWrittenBy(String writtenBy) {
		this.writtenBy = writtenBy;
	}

	public String getLength() {
		return length;
	}

	public void setLength(String length) {
		this.length = length;
	}

	public String getAlbum() {
		return album;
	}

	public void setAlbum(String album) {
		this.album = album;
	}

	public String getHasRingo() {
		return hasRingo;
	}

	public void setHasRingo(String hasRingo) {
		this.hasRingo = hasRingo;
	}

	public String getDateRecorded() {
		return dateRecorded;
	}

	public void setDateRecorded(String dateRecorded) {
		this.dateRecorded = dateRecorded;
	}

	public String getMainSinger() {
		return mainSinger;
	}

	public void setMainSinger(String mainSinger) {
		this.mainSinger = mainSinger;
	}

	public String getAlbumVersion() {
		return albumVersion;
	}

	public void setAlbumVersion(String albumVersion) {
		this.albumVersion = albumVersion;
	}

	@Override
	public String toString() {
		return "Song [id=" + id + ", trackName=" + trackName + ", writtenBy=" + writtenBy + ", length=" + length
				+ ", album=" + album + ", hasRingo=" + hasRingo + ", dateRecorded=" + dateRecorded + ", mainSinger="
				+ mainSinger + ", albumVersion=" + albumVersion + "]";
	}
	
	

	

	
}
