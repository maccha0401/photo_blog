class LikesController < ApplicationController
  def index
    @meganes = current_user.like_meganes.order(updated_at: :desc).page(params[:page])
  end
  
  def create
    @like = Like.create(user_id: current_user.id, megane_id: params[:megane_id])
    @megane = Megane.find(params[:megane_id])
  end
  
  def destroy
    @like = Like.find(params[:id]).destroy
    @megane = Megane.find(@like.megane_id)
  end
end
