class HomeController < ApplicationController

  def index
    redirect_to user_path(params[:id])
  end

end
