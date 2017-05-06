class AddDataToRoute < ActiveRecord::Migration[5.0]
  def change
    add_column :routes, :date, :date
    add_column :routes, :start_hours, :integer
    add_column :routes, :end_hours, :integer
  end
end
