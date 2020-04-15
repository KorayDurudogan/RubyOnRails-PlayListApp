require 'rails_helper'

RSpec.describe Api::UsersController, type: :controller do

  describe "index" do
    it "users must be array" do
      get :index
      expect(assigns(:data)).to be_kind_of(Array)
    end

    it "members of users must be User" do
      get :index
      expect(assigns(:data).first).to be_kind_of(User)
    end
  end

end
