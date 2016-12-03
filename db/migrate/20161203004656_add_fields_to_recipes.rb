class AddFieldsToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :name, :string
    add_column :recipes, :user_id, :integer
    add_column :recipes, :description, :text
    add_column :recipes, :instructions, :text
  end
end
