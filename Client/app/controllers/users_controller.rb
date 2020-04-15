class UsersController < ApplicationController

  def index
    begin
      @users = getUsers
    rescue Exception => exp
      #some logging would be done.
      render :html => "Something went wrong ! Try again later."
    end
  end

  def show
    begin
      @user = (getUsers.find_all { |user| user.id == params[:id] }).first
      @selected_playlists = getPlayList(@user.id)
      @songs_list = getSongs
    rescue Exception => exp
      #some logging would be done.
      render :html => "Something went wrong ! Try again later."
    end
  end

  private def getSongs
    response = RestClient.get "http://localhost:3000/api/songs"
    json_response = JSON.parse response

    json_response.map { |i|
      song = Song.new(i['id'])
      song.title = i['title']
      song.interpret = i['interpret']
      song.album = i['album']
      song.track = i['track']
      song.year = i['year']
      song.genre = i['genre']
      song
    }
  end

  private def getPlayList(id)
    response = RestClient.get "http://localhost:3000/api/playlist/" + id
    json_response = JSON.parse response

    json_response.map { |i|
      playlist = PlayList.new(i['id'])
      playlist.user_id = i['user_id']
      playlist.name = i['name']
      playlist.mp3_ids = i['mp3_ids']
      playlist
    }
  end

  private def getUsers
      response = RestClient.get "http://localhost:3000/api/users"
      json_response = JSON.parse response

      json_response.map { |i|
        user = User.new(i['id'])
        user.first_name = i['first_name']
        user.last_name = i['last_name']
        user.email = i['email']
        user.user_name = i['user_name']
        user
      }
   end

end
