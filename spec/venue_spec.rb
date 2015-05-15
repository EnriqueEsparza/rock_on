require 'spec_helper'

describe Venue do
  it { should have_and_belong_to_many(:bands)}
end

it("validates presence of a venue name") do
  venue = Venue.new({:venue_name => ""})
  expect(venue.save()).to(eq(false))
end
