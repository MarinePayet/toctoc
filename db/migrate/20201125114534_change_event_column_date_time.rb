class ChangeEventColumnDateTime < ActiveRecord::Migration[6.0]
  def change
    change_column :events, :starting_date, :datetime
    change_column :events, :ending_date, :datetime

    rename_column :events, :starting_date, :starting_at
    rename_column :events, :ending_date, :ending_at

    remove_column :events, :starting_hour, :integer
    remove_column :events, :ending_hour, :integer
  end
end
