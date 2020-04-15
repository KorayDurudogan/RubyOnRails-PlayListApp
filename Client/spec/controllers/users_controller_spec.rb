require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "index" do
    it "users must be array" do
      get :index
      expect(assigns(:users)).to be_kind_of(Array)
    end

    it "members of users must be User" do
      get :index
      expect(assigns(:users).first).to be_kind_of(User)
    end

    it "renders the index view" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe 'show' do

    it "user must be an user" do
      get :show, id: 1
      expect(assigns(:user)).to be_kind_of(User)
    end

    it "selected_playlists must be array" do
      get :show, id: 1
      expect(assigns(:selected_playlists)).to be_kind_of(Array)
    end

    it "members of selected_playlists must be PlayList" do
      get :show, id: 1
      expect(assigns(:selected_playlists).first).to be_kind_of(PlayList)
    end

    it "songs_list must be array" do
      get :show, id: 1
      expect(assigns(:songs_list)).to be_kind_of(Array)
    end

    it "members of songs_list must be Song" do
      get :show, id: 1
      expect(assigns(:songs_list).first).to be_kind_of(Song)
    end

    it "renders the show view" do
      get :show, id: 1
      expect(response).to render_template("show")
    end
  end

end
