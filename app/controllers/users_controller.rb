
class UsersController < ApplicationController
  def show
    @cat = User.find(params[:id]).cat
  end
end