class HostsController < ApplicationController
  def index
    @hosts = Host.all
  end

  #def new
  #  @host = Host.new
  #end

  #def create
  #  @host = Host.new(params[:host])
  #  if @host.save
  #    redirect_to hosts_path
  # else
  #    render 'new'
  #  end
  #end

  def edit
    @host = Host.find(params[:id])
  end

  def show
    @host = Host.find(params[:id])
  end
  
  def update
    @host = Host.find(params[:id])
    if @host.update_attributes(params[:host])
      redirect_to host_path(@host.id)
    else
      render 'edit'
    end
  end
  
  def destroy
    @host = Host.find(params[:id])
    @host.destroy
    redirect_to hosts_path
  end
end
