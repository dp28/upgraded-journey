class RemoveNullFalseFromEventEnd < ActiveRecord::Migration[5.0]
  def change
    change_column :events, :end_time, :datetime, null: true
  end
end
