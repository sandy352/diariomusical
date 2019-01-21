package diariomusical.daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import diariomusical.models.Musica;



public class MusicaDAO {
	private Connection connection;

	public MusicaDAO() {
		connection = ConnectionFactory.getConnection();
	}
	public Musica getMusicaByID(Long id) {
		Musica result = null;

		try {
			PreparedStatement stmt = this.connection.prepareStatement("select * from musica where id = ?;");
			
			stmt.setLong(1, id);
			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				result = new Musica();
				result.setId(rs.getLong("id"));
				result.setLink(rs.getString("Link"));
				result.setNome(rs.getString("nome"));
				
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;
	}


}
