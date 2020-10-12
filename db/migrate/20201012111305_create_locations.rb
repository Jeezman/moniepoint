class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :location_platform
      t.string :location_est
      t.string :location_geotag
      t.references :entry
      t.timestamps
    end
  end
end
