# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

t1 = Entry.create(state: "Ondo", lga: "Ondo West", town: "Ondo town", estimated_pop: "50000", radio_stations: "5", tv_stations: "3", other_comms: "none", popular_unions: "3", literacy_level: "high", agent_name: "Olutobi Adeyemi", agent_phone: "08069561146", daily_withdraw_value: 500000, daily_deposit_count: 2000, interest_level: "400000", no_of_locations: 5, alajo_name: "Dami Fadare", alajo_phone: "08037171439", alajo_prime_location: "Ajah", alajo_no_of_locations: 5, alajo_union: "market", alajo_population: "200", alajo_avg_age: "25", alajo_avg_customer: "40", alajo_avg_daily_contr: "25000", alajo_avg_acc_bal: "40000")
Location.create(location_platform: "Moniepoint", location_est: "2019", location_geotag: "1", entry_id: t1.id)
Location.create(location_platform: "Opay", location_est: "2018", location_geotag: "2", entry_id: t1.id)
Location.create(location_platform: "Firstmonie", location_est: "2020", location_geotag: "3", entry_id: t1.id)
