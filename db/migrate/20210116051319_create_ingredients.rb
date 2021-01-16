class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name #Need to run this again? Name was missing...

      t.timestamps
    end
  end
end
