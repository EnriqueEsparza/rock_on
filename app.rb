require 'bundler/setup'
Bundler.require(:default)
require('pry')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get '/' do
  @bands = Band.all
  @venues = Venue.all
  erb(:index)
end

post '/' do
  @bands = Band.all
  @venues = Venue.all
  @band = Band.new(band_name: params.fetch("name"))
  if @band.save
    redirect to("/")
  else
    erb(:errors)
  end
  @venue = Venue.new(venue_name: params.fetch("place"))
  if @venue.save
    redirect to("/")
  else
    erb(:errors)
  end
end
