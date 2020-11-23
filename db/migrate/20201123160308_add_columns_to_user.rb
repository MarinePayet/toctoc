class AddColumnsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :stairs, :integer
    add_column :users, :birthday, :date
    add_column :users, :catch_phrase, :text
    add_column :users, :hobbies, :text
    add_column :users, :job, :string
    add_column :users, :phone_number, :integer
  end
end
