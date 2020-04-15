class Api::PlaylistController < ApplicationController

  def show
    playlist_invoker = ProviderInvoker.new(PlaylistProvider.new)
    @playlist_list = playlist_invoker.getData
    @playlist_list.select { |playlist| playlist.user_id == params[:id] }
    render json: @playlist_list, adapter: :json
  end
end
