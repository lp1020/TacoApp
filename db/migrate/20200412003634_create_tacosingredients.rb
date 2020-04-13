class CreateTacosingredients < ActiveRecord::Migration[6.0]
  def change
    create_table :tacosingredients do |t|

      t.integer :taco_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
