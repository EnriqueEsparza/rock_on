class AddVenueIdToBandsVenuesTable < ActiveRecord::Migration
  def change
    add_column(:bands_venues, :venue_id, :int)
  end
end
