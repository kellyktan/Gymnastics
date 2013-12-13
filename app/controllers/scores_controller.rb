class ScoresController < ApplicationController
  def new
    @score = Score.new
  end

  def index
    if host_signed_in?
      @host = current_host
      @meets = Meet.where(host_id: current_host.id)
      @gymnasts = Gymnast.where(meet_id: @meets)
      @scores = Score.where(gymnast_id: @gymnasts)
    else
      @score = []
    end  
  end
  
  def create
    @score = Score.new(params[:score])
    if @score.save
      @score.all_around = ([@score.vault, @score.bars, @score.beam, @score.floor].inject(:+) * 1000).round / 1000.0
      @score.save
      redirect_to meet_path(@score.gymnast.meet_id)
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
      @score.all_around = ([@score.vault, @score.bars, @score.beam, @score.floor].inject(:+) * 1000).round / 1000.0
      @score.save
      redirect_to meet_path(@score.gymnast.meet_id)
    else
      render 'edit'
    end
  end
  
  def destroy
    @score = Score.find(params[:id])
    @id = @score.gymnast.meet_id
    @score.destroy
    redirect_to meet_path(@score.gymnast.meet_id)
  end
end