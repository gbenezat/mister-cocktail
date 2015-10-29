class IngredientIdToDose < ActiveRecord::Migration
  def change
    add_column(:doses, :ingredient_id, :integer)
  end
end
