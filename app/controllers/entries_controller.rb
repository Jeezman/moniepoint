
class EntriesController < ApplicationController
  def index
    @entries = Entry.all
    @new_entry = Entry.new
    @all_entries = Entry.order(created_at: :desc).all
  end

  def show
    @all_entries = Entry.order(created_at: :desc).all
  end

  def location
    @entry = Entry.find(params[:id])
    @locations = @entry.locations
  end

  def create
    @new_entry = Entry.new(entry_params)
    @new_entry.locations.build(location_params)
    if @new_entry.save
      redirect_to root_path
    end
  end

  private
  def entry_params
    params.require(:entry).permit(
      :state, :lga, :town, :estimated_pop, :radio_stations, :tv_stations,
      :other_comms, :popular_unions, :literacy_level,
      :agent_name, :agent_phone, :daily_withdraw_value,
      :daily_deposit_count, :interest_level, :no_of_locations,
      :alajo_name, :alajo_phone, :alajo_prime_location, :alajo_no_of_locations,
      :alajo_union, :alajo_population, :alajo_avg_age, :alajo_avg_customer,
      :alajo_avg_daily_contr, :alajo_avg_acc_bal
    )
  end

  def location_params
    # params.require(:entry).permit(:location_platform, :location_est, :location_geotag)
    params.require(:entry).require(:locations).permit(:location_platform, :location_est, :location_geotag)
  end

end
