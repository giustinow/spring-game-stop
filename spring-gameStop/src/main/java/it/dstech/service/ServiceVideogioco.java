package it.dstech.service;

import java.util.List;

import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import it.dstech.model.Videogioco;
import it.dstech.repository.VideogiocoRepository;

@Service
@Transactional
public class ServiceVideogioco {
	@Autowired
	VideogiocoRepository repo;

	public boolean checkEsistenza(Long id) {
		if (!repo.findById(id).isEmpty()) {
			return true;
		}
		return false;
	}

	public void save(Videogioco videogioco) {
		repo.save(videogioco);
	}

	public List<Videogioco> listAll() {
		return (List<Videogioco>) repo.findAll();
	}

	public Videogioco get(Long id) {
		return repo.findById(id).get();
	}

	public void delete(Long id) {
		repo.deleteById(id);
	}

	public Videogioco findAllenatore(Long id) {
		return repo.findById(id).get();
	}

	public List<Videogioco> sortTitolo() {
		return repo.sortTitolo();
	}

	public List<Videogioco> sortClassificazione() {
		return repo.sortClassificazione();
	}
	public List<Videogioco> sortCategoria() {
		return repo.sortCategoria();
	}
	public List<Videogioco> sortPrezzo() {
		return repo.sortPrezzo();
	}
	public List<Videogioco> filterTitolo(String titolo) {
		return repo.filterTitolo(titolo);
	}
	public List<Videogioco> filterClassificazione(int classificazione) {
		return repo.filterClassificazione(classificazione);
	}
	public List<Videogioco> filterCategoria(String categoria) {
		return repo.filterCategoria(categoria);
	}
	public List<Videogioco> filterPrezzo(double prezzo) {
		return repo.filterPrezzo(prezzo);
	}
	
}
