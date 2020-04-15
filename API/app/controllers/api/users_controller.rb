class Api::UsersController < ApplicationController

  def index
    invoker = ProviderInvoker.new(UserProvider.new)
    @data = invoker.getData
    render json: @data, adapter: :json
  end
end
