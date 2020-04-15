require 'rails_helper'

RSpec.describe Api::PlaylistController, type: :controller do

  describe "show" do
    it "users must be array" do
      get :show, id: 1
      expect(assigns(:playlist_list)).to be_kind_of(Array)
    end

    it "members of users must be User" do
      get :show, id: 1
      expect(assigns(:playlist_list).first).to be_kind_of(PlayList)
    end
  end
end
