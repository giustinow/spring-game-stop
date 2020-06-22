package it.dstech.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import it.dstech.model.Videogioco;

public interface VideogiocoRepository extends CrudRepository<Videogioco, Long> {
	@Query("select v from Videogioco v order by titolo ASC")
    List<Videogioco> sortTitolo();
	@Query("select v from Videogioco v order by classificazione ASC")
    List<Videogioco> sortClassificazione(    );
	@Query("select v from Videogioco v order by prezzo ASC")
    List<Videogioco> sortPrezzo();
	@Query("select v from Videogioco v order by categoria ASC")
    List<Videogioco> sortCategoria();
	
	@Query(value ="select v from Videogioco v where v.titolo = :titolo")
	List<Videogioco> filterTitolo(@Param("titolo") String titolo);
	@Query(value ="select v from Videogioco v where v.classificazione = :classificazione")
	List<Videogioco> filterClassificazione(@Param("classificazione") int classificazione);
	@Query(value ="select v from Videogioco v where v.categoria = :categoria")
    List<Videogioco> filterCategoria(@Param("categoria") String categoria);
	@Query(value ="select v from Videogioco v where v.prezzo = :prezzo")
    List<Videogioco> filterPrezzo(@Param("prezzo") double prezzo);
}
