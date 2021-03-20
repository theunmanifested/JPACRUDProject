package com.skilldistillery.beatles.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.beatles.entities.Song;

@Transactional
@Service
public class SongDAOJpaImpl implements SongDAO {
	
	
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Song findById(int id) {
		return em.find(Song.class, id);
	}

	@Override
	public List<Song> findAll() {
		String jpql = "SELECT s FROM Song s";
		return em.createQuery(jpql, Song.class).getResultList();
	}

	@Override
	public Song addSong(Song song) {
		em.persist(song);
		em.flush();
		return song;
	}

	@Override
	public Song updateSong(Song song) {
		Song uSong = em.find(Song.class, song.getId());
		uSong.setTrackName(song.getTrackName());
		uSong.setWrittenBy(song.getWrittenBy());
		uSong.setLength(song.getLength());
		uSong.setAlbum(song.getAlbum());
		uSong.setHasRingo(song.getHasRingo());
		uSong.setDateRecorded(song.getDateRecorded());
		uSong.setMainSinger(song.getMainSinger());
		uSong.setAlbumVersion(song.getAlbumVersion());
		return uSong;
	}
	
	

}
