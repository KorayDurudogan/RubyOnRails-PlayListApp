require 'rails_helper'

RSpec.describe Api::SongsController, type: :controller do

  describe "index" do
    it "users must be array" do
      get :index
      expect(assigns(:song_list)).to be_kind_of(Array)
    end

    it "members of users must be User" do
      get :index
      expect(assigns(:song_list).first).to be_kind_of(Song)
    end
  end
end
