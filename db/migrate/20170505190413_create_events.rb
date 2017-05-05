class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.references :location, index: true, null: false
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.string :description

      t.timestamps null: false
    end
  end
end
