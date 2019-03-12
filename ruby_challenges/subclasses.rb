class Playlist

    def set_name=(name)
        @name = name
    end

    def get_name
        return @name
    end

    def set_genre=(genre)
        @genre = genre
    end

    def get_genre
        return @genre
    end

    def set_band_names=(band_names)
        @band_names = band_names
    end

    def get_band_names
        return @band_names
    end

    def set_song_list=(song_list)
        @song_list = song_list
    end

    def get_song_list
        return @song_list
    end

end


class BPM < Playlist 

	def set_min_bpm=(min_bpm)
		@min_bpm = min_bpm
    end
    
    def get_min_bpm
        return @min_bpm
    end
    
	def set_max_bpm=(max_bpm)
		@max_bpm = max_bpm
    end
    
    def get_max_bpm
        return @max_bpm
    end

end


class Mood < Playlist

	def set_mood=(mood)
		@mood = mood
	end

    def get_mood
        return @mood
    end

end


my_running_playlist = BPM.new
my_running_playlist.set_name= "Half Marathon Training"
my_running_playlist_name = my_running_playlist.get_name

my_running_playlist.set_max_bpm = 190
my_running_playlist_max_bpm = my_running_playlist.get_max_bpm

my_running_playlist.set_genre= "Emo Rock"
my_running_playlist_genre = my_running_playlist.get_genre

puts my_running_playlist.inspect

puts "The #{my_running_playlist_name} Playlist helps me keep my cadence at #{my_running_playlist_max_bpm}."