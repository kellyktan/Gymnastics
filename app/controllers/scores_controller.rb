class ScoresController < ApplicationController
  def new
    @score = Score.new
  end

  def index
    @scores = Score.all
  end
  
  def create
    @score = Score.new(params:[:score])
    if @score.save
      redirect_to scores_path
    else
      render 'new'
    end
  end
end