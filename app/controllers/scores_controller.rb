class ScoresController < ApplicationController
  def new
    @score = Score.new
  end

  def index
    @scores = Score.all
  end
  
  def create
    @score = Score.new(params[:score])
    if @score.save
      redirect_to scores_path
    else
      render 'new'
    end
  end
  
  def show
    @score = Score.find(params[:id])
  end
  
  def edit
    @score = Score.find(params[:id])
  end
  
  def update
    @score = Score.find(params[:id])
    if @score.update_attributes(params[:score])
      redirect_to score_path(@score.id)
    else
      render 'edit'
    end
  end
  
  def destroy
    @score = Score.find(params[:id])
    @score.destroy
    redirect_to scores_path
  end
end