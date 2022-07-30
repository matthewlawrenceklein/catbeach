class ItemsController < ApplicationController
  def new
    ActiveRecord::Base.transaction do
      item = Item.new(name: items_params[:name], user: current_user)
      if item.save
        @user = User.find(current_user.id)
        @user.update!(bux: @user.bux - items_params[:price].to_i)
      end
    end

    redirect_to '/store'

  end

  private def items_params
    params.permit(:name, :price)
  end
end