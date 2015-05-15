class CreateBand < ActiveRecord::Migration
  def change
    create_table(:bands) do |b|
      b.column(:band_name, :string)

      b.timestamps()
    end
  end
end
