class RemoveReferencesColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :references, :string
  end
end
