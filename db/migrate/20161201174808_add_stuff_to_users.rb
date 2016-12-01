class AddStuffToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :bio, :text
    add_column :users, :industry, :string
    add_column :users, :company, :string
    add_column :users, :location, :string
  end
end
