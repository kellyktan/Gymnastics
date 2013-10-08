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
  
  def show
    @meet = Meet.find(params[:id])
  end
  
  def edit
    @meet = Meet.find(params[:id])
  end
  
  def update
    @meet = Meet.find(params[:id])
    if @meet.update_attributes(params[:meet])
      redirect_to meet_path(@meet.id)
    else
      render 'edit'
    end
  end
  
  def destroy
    @meet = Meet.find(params[:id])
    @meet.destroy
    redirect_to meets_path
  end
end
