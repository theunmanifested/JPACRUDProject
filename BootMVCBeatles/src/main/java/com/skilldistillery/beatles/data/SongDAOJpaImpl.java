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

//	@Override
//	public Song updateSong(int id, Song song) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	@Override
//	public boolean destroySong(int id) {
////		EntityManager em = emf.createEntityManager();
////		em.getTransaction().begin();
////		Song managed = new Song();
////		managed = em.find(Song.class, id);
////		managed.setFirstName(actor.getFirstName());
////		managed.setLastName(actor.getLastName());
////		em.getTransaction().commit();
////		em.close();
//		return false;
//	}
//
//	@Override
//	public Song addSong(Song song) {
//		// TODO Auto-generated method stub
//		return null;
//	}

}
