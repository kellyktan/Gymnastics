class LandingPagesController < ApplicationController
  def home
    if host_signed_in?
      @meets = Meet.where(host_id:current_host)
      @ordered = @meets.in_order
    else
      @meets = []
    end
  end
end
