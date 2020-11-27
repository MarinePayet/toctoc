class RenameTypeToTypologyInServices < ActiveRecord::Migration[6.0]
  def change
    rename_column :services, :type, :typology
  end
end
