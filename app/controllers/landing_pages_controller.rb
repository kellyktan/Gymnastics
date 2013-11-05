class LandingPagesController < ApplicationController
  def home
    if !host_signed_in?
      redirect_to new_host_session_path
    end
  end
end
