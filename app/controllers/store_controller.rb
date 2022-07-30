class StoreController < ApplicationController
  def index
    @store_items = HashWithIndifferentAccess.new(YAML.load(File.open("#{Rails.root}/config/store_items.yml", 'r')))[:items]
    @user_items = current_user.items.pluck(:name)

    @store_items = @store_items.each do |item| 
      if @user_items.include? item[:name]
        item[:owned] = true
      else
        item[:owned] = false
      end
    end
  end
end
