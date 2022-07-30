class AddNameToCats < ActiveRecord::Migration[7.0]
  def change
    add_column :cats, :name, :string
    add_reference :cats, :user, foreign_key: true 
  end
end
