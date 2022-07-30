class StoreController < ApplicationController
  def index
    @store_items = HashWithIndifferentAccess.new(YAML.load(File.open("#{Rails.root}/config/store_items.yml", 'r')))[:items]
    @user = current_user

    
  end
end
