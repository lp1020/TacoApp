class CreateTacos < ActiveRecord::Migration[6.0]
  def change
    create_table :tacos do |t|
      t.string :name
      t.integer :tacocat_id
      t.integer :tacosingredient_id
      t.timestamps
    end
  end
end
