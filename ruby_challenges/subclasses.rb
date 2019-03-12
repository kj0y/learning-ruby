class Playlist

    attr_accessor :name, :genre, :band_names, :song_list

end


class BPM < Playlist

    attr_accessor :min_bpm, :max_bpm

end


class Mood < Playlist

    attr_accessor :mood

end


my_running_playlist = BPM.new

my_running_playlist.name= "Half Marathon Training"
my_running_playlist.max_bpm = 190
my_running_playlist.genre= "Emo Rock"

puts my_running_playlist.inspect

puts "The #{my_running_playlist.name} Playlist helps me keep my cadence at #{my_running_playlist.max_bpm}."

song1 = {
    title: "Lay Here",
    artist: "Copeland"
}

my_favorite_song = song1[:title]

puts "My favorite song is #{my_favorite_song}"
