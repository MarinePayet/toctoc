class RemoveUserColumn < ActiveRecord::Migration[6.0]
  def change
      remove_column :events, :user, :string
  end
end
