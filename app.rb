require('sinatra')
require('sinatra/reloader')
require('./lib/parcels')
also_reload('lib/**/*.rb')

get('/')  do
  erb(:index)
end

get('/parcels') do
  @distance = params.fetch('distance').to_i
  @weight = params.fetch('weight').to_i
  @width = params.fetch('width').to_i
  @length = params.fetch('length').to_i
  @height = params.fetch('height').to_i
  @speed = params.fetch('speed').to_i
  @wrap = params.fetch('wrap')
  @parcel = Parcels.new(@speed, @distance, @weight, @width, @length, @height)
  if @wrap == "yes"
    @result = @parcel.cost_to_ship + @parcel.cost_to_wrap
  else
    @result = @parcel.cost_to_ship
  end
  erb(:result)
end
