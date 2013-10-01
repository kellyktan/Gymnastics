class MeetsController < ApplicationController
  def new
    @meet = Meet.new
  end
  
  def index
    @meets = Meet.all
  end

  def create
    @meet = Meet.new(params[:meet])
    if @meet.save
      redirect_to meets_path
    else
      render 'new'
    end
  end
end
