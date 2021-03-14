package com.skilldistillery.beatles.data;

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
		// TODO Auto-generated method stub
		return em.find(Song.class, id);
	}

}
