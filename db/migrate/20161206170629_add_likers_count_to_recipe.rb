class AddLikersCountToRecipe < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :likers_count, :integer, default: 0
  end
end
