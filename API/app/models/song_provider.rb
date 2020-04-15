class SongProvider < DataProvider

  def initialize
    super "app/data/mp3_data.csv"
  end

  def getData
    songs = super
    arr = Array.new

    songs.each do |song|
      if song == songs.first then next end

      new_song = Song.new(song[0])
      new_song.title = song[1]
      new_song.interpret = song[2]
      new_song.album = song[3]
      new_song.track = song[4]
      new_song.year = song[5]
      new_song.genre = song[6]
      arr.push(new_song)
    end

    return arr
  end
end
