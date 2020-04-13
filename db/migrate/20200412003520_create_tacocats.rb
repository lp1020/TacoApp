class CreateTacocats < ActiveRecord::Migration[6.0]
  def change
    create_table :tacocats do |t|
      t.string :name
      t.timestamps
    end
  end
end
