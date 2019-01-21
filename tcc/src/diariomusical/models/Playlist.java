package diariomusical.models;
import diariomusical.models.Musica;

public class Playlist {
	private Long Id;
	private String nome;
	private Musica musica;
	
	public Long getId() {
		return Id;
	}
	public void setId(Long id) {
		this.Id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public Musica getMusica() {
		return musica;
	}
	public void setMusica(Musica musica) {
		this.musica = musica;
	}
	
}




