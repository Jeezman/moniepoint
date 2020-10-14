class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.string :state
      t.string :lga
      t.string :town
      t.string :estimated_pop
      t.string :radio_stations
      t.string :tv_stations
      t.string :other_comms
      t.string :popular_unions
      t.string :literacy_level
      t.string :agent_name
      t.string :agent_phone
      t.decimal :daily_withdraw_value
      t.integer :daily_deposit_count
      t.string :interest_level
      t.integer :no_of_locations
      t.string :alajo_name
      t.string :alajo_phone
      # t.string :alajo_prime_location
      # t.integer :alajo_no_of_locations
      t.string :alajo_union
      t.string :alajo_population
      t.string :alajo_avg_age
      t.string :alajo_avg_customer
      t.string :alajo_avg_daily_contr
      t.string :alajo_avg_acc_bal
      t.timestamps
    end
  end
end
