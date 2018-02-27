class InteractionsController < ApplicationController
  def create
    Interaction.create(
      like: params[:like],
      user_one_id: current_user.id,
      user_two_id: params[:user_two_id])
    redirect_to search_path
  end
end
