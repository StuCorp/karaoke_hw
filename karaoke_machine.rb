class KaraokeMachine

  def initialize(songs)
    @songs = songs
  end

  def song_count()
    return @songs.count()

  end

  def get_song_list()
    return @songs
  end

  def puts_song_by_index(index)
    return "#{@songs[index].get_title()} by #{@songs[index].get_artist()}"
  end

def puts_all_songs_available()
  song_list = []
  index = 1 
  for song in @songs
    song_list << "#{index}) " + "#{song.get_title()} by #{song.get_artist()}"
    index += 1
  end
  return song_list.join(" ")
end

def add_song(song)
  @songs << song
end



end