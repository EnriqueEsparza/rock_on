class Venue < ActiveRecord::Base
  has_and_belongs_to_many(:bands)
  validates(:venue_name, {:presence => true})
  before_save(:capitalize_names)

   scope(:not_done, -> do
     where({:done => false})
   end)

 private

   define_method(:capitalize_names) do
     self.venue_name=(venue_name().camelcase())
   end

end
