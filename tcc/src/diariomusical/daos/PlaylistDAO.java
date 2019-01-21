package diariomusical.daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import diariomusical.models.Musica;
import diariomusical.models.Playlist;



public class PlaylistDAO {
	private Connection connection;

	public PlaylistDAO() {
		connection = ConnectionFactory.getConnection();
	}
	public Playlist getById(Long id) {
		Playlist result = null;

		try {
			PreparedStatement stmt = this.connection.prepareStatement("select * from playlists where id = ?;");
			
			stmt.setLong(1, id);
			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				result = new Playlist();
				result.setId(rs.getLong("id"));
				result.setNome(rs.getString("nome"));
				
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;
	}

	public List<Playlist> getLista(String nome){
		try {

			List<Playlist> playlists = new ArrayList<Playlist>();
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement("select * from playlist where nome = ?;");
			stmt.setString(1, nome);
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				Playlist playlist = new Playlist();
				playlist.setId(rs.getLong("id"));
				playlist.setNome(rs.getString("nome"));
				
				
				playlist.setMusica(new MusicaDAO().getMusicaByID(rs.getLong("musica_id")));
				
				playlists.add(playlist);
			}
			rs.close();
			stmt.close();
			return playlists;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	}

