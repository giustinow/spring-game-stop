package it.dstech.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Videogioco {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String titolo;
	private int classificazione;
	private double prezzo;
	private String categoria;

	public Videogioco() {
	}

	protected Videogioco(Long id, String titolo, int classificazione, double prezzo, String categoria) {
		this.id = id;
		this.titolo = titolo;
		this.classificazione = classificazione;
		this.prezzo = prezzo;
		this.categoria = categoria;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitolo() {
		return titolo;
	}

	public void setTitolo(String titolo) {
		this.titolo = titolo;
	}

	public int getClassificazione() {
		return classificazione;
	}

	public void setClassificazione(int classificazione) {
		this.classificazione = classificazione;
	}

	public double getPrezzo() {
		return prezzo;
	}

	public void setPrezzo(double prezzo) {
		this.prezzo = prezzo;
	}

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

}
