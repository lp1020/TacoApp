class CreateIngcats < ActiveRecord::Migration[6.0]
  def change
    create_table :ingcats do |t|
      t.string :name

      t.timestamps
    end
  end
end
