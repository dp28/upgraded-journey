class CreateAlerts < ActiveRecord::Migration[5.0]
  def change
    create_table :alerts do |t|
      t.references :route, foreign_key: true
      t.integer :value
      t.string :unit, null: false

      t.timestamps
    end
  end
end
