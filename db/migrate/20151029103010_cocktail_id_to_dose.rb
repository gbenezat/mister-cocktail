class CocktailIdToDose < ActiveRecord::Migration
  def change
    add_column(:doses, :cocktail_id, :integer)
  end
end
