package diariomusical.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import diariomusical.models.Musica;
import diariomusical.models.Playlist;
import diariomusical.daos.PlaylistDAO;

@Controller
@RequestMapping("/playlists")

public class PlaylistController {
	
@GetMapping
public String listarPlaylists() {
	return "playlists/listaPlaylists";
}
	
@GetMapping("/selecionar")
	public ModelAndView selecionar (String nome) {
		PlaylistDAO playlistDAO = new PlaylistDAO();
		ModelAndView model = new ModelAndView("playlists/ouvirPlaylist");
		model.addObject("playlist", playlistDAO.getLista(nome));
		
		return model;
	}
	
	

    }

