class StoreController < ApplicationController
  def index
    redirect_to store_cat_items_path
  end

  def cat_items
    @user_items = current_user.items.pluck(:name)
    @store_items = HashWithIndifferentAccess.new(YAML.load(File.open("#{Rails.root}/config/store_items.yml", 'r')))[:cat_items]
    @store_items = @store_items.each do |item| 
      item_owned(item)
    end
  end

  def spot_items
    @user_items = current_user.items.pluck(:name)
    @store_items = HashWithIndifferentAccess.new(YAML.load(File.open("#{Rails.root}/config/store_items.yml", 'r')))[:spot_items]
    @store_items = @store_items.each do |item| 
      item_owned(item)
    end
  end

  private def item_owned(item)
    if @user_items.include? item[:name]
      item[:owned] = true
    else
      item[:owned] = false
    end
  end
end
