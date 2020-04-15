class Api::SongsController < ApplicationController

  def index
    song_list_invoker = ProviderInvoker.new(SongProvider.new)
    @song_list = song_list_invoker.getData
    render json: @song_list, adapter: :json
  end
end
