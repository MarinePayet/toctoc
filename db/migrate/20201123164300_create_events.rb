class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.date :starting_date
      t.date :ending_date
      t.integer :starting_hour
      t.integer :ending_hour
      t.string :location
      t.string :title
      t.text :description
      t.string :user
      t.string :references

      t.timestamps
    end
  end
end
