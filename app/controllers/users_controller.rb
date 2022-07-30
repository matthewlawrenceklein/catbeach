
class UsersController < ApplicationController
  def show
    @cat = User.find(params[:id]).cat
  end
  
  # def index
  # end

  # def sign_in
  # end
end