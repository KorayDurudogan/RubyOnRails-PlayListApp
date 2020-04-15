class PlaylistProvider < DataProvider

  def initialize
    super "app/data/playlist_data.csv"
  end

  def getData
    playlists = super
    arr = Array.new

    playlists.each do |playlist|
      if playlist == playlists.first then next end

      new_play_list = PlayList.new(playlist[0])
      new_play_list.user_id = playlist[1]
      new_play_list.name = playlist[2]
      new_play_list.mp3_ids = playlist[3].split(',')
      arr.push(new_play_list)
    end

    return arr
  end
end
