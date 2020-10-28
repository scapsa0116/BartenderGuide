class CreateDrinks < ActiveRecord::Migration[6.0]
  def change
    create_table :drinks do |t|
      t.string :strDrink
      t.string :strInstructions
      t.timestamps
    end
  end
end
