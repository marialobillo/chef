class AddChefIdToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :cocinero_id, :integer 
  end
end
