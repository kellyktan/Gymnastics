class GymnastsController < ApplicationController
  def new
    @gymnast = Gymnast.new
  end

  def index
    @gymnasts = Gymnast.all
  end
  
  def create
    @gymnast = Gymnast.new(params:[:gymnast])
    if @gymnast.save
      redirect_to gymnasts_path
    else
      render 'new'
    end
  end
end
