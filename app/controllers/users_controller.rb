class UsersController < ApplicationController
  before_action :authenticate_user!

  def search
    @user = User.order("RANDOM()").first
    #render json: @user.to_json
  end
end
