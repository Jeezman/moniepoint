class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.string :email
      t.integer :estimated_pop
      t.string :radio_stations
      t.string :tv_stations
      t.string :other_comms
      t.string :popular_unions
      t.timestamps
    end
  end
end
