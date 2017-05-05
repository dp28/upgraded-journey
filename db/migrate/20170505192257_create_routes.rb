class CreateRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :routes do |t|
      t.integer :origin_location_id
      t.integer :destination_location_id
      t.string :transport_mode

      t.timestamps
    end
  end
end
