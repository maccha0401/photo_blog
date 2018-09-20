class MeganesController < ApplicationController
  before_action :require_login, except: [:index, :show]
  before_action :set_megane, only: [:show, :edit, :update, :destroy]

  def new
    if params[:back]
      set_new_megane_with_params
    else
      set_new_megane
    end
  end

  def confirm
    if params[:megane].nil?
      set_new_megane
      render action: :new
    else
      set_new_megane_with_params
    end
  end

  def create
    set_new_megane_with_params
    @megane.user_id = current_user.id
    if @megane.save
      flash[:notice] = "Megane is created."
      redirect_to :root
    else
      flash[:danger] = "Megane create is failed!!"
      redirect_to :root
    end
  end

  def index
    @meganes = Megane.all.order(updated_at: :desc)
  end

  def show
  end

  def destroy
    @megane.destroy
    flash[:danger] = "megane is deleted."
    redirect_to :root
  end

  def edit
  end

  def update
    if @megane.update(megane_params)
      flash[:notice] = "megane is updated."
      redirect_to :root
    else
      flash.now[:danger] = "megane update is failed!!"
      render :root
    end
  end

  private

  def megane_params
    params.require(:megane).permit(:content, :picture, :picture_cache)
  end

  def set_megane
    @megane = Megane.find(params[:id])
  end

  def set_new_megane
    @megane = Megane.new
  end

  def set_new_megane_with_params
    @megane = Megane.new(megane_params)
  end
end