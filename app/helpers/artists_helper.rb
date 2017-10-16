module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def artist_select(song, artist)
  	if artist.nil?
	  	content_tag :div do 
	  		"<br>".html_safe + "Select artist from list, or enter below: ".html_safe + "<br>".html_safe +
	  		select("song", "artist_id", Artist.all.collect{|artist| [artist.name, artist.id] }, { include_blank: true }) + "<br><br>".html_safe

	  	end
	end
  end
end
