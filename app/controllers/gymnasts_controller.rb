class GymnastsController < ApplicationController
  def new
    @gymnast = Gymnast.new
  end

  def index
    if host_signed_in?
      @gymnasts = Gymnast.where(meet_id: current_host.meets)
      @ordered = @gymnasts.in_order
    else
      @gymnasts = []
    end
  end
  
  def create
    @gymnast = Gymnast.new(params[:gymnast])
    if @gymnast.save
      redirect_to new_score_path
    else
      render 'new'
    end
  end
  
  def show
    @gymnast = Gymnast.find(params[:id])
    @scores = @gymnast.scores
  end
  
  def edit
    @gymnast = Gymnast.find(params[:id])
  end
  
  def update
    @gymnast = Gymnast.find(params[:id])
    if @gymnast.update_attributes(params[:gymnast])
      redirect_to gymnast_path(@gymnast.id)
    else
      render 'edit'
    end
  end
  
  def destroy
    @gymnast = Gymnast.find(params[:id])
    @gymnast.destroy
    redirect_to gymnasts_path
  end
end
