class CreateBandsVenues < ActiveRecord::Migration
  def change
    create_table(:bands_venues) do |b|
      b.column(:band_id, :int)
      b.column(:band_id, :int)
      b.timestamps()
    end
  end
end
