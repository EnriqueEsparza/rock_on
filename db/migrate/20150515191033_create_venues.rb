class CreateVenues < ActiveRecord::Migration
  def change
    create_table(:venues) do |b|
      b.column(:venue_name, :string)

      b.timestamps()
    end
  end
end
