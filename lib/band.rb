class Band < ActiveRecord::Base
  has_and_belongs_to_many(:venues)
  validates(:band_name, {:presence => true})
  before_save(:capitalize_names)

   scope(:not_done, -> do
     where({:done => false})
   end)

 private

   define_method(:capitalize_names) do
     self.band_name=(band_name().camelcase())
   end

end
