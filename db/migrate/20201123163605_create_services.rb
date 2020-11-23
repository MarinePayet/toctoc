class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.boolean :available
      t.string :name
      t.text :description
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
