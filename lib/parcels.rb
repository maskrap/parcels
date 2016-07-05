class Parcels
  define_method(:initialize)  do |speed, distance, weight, width, length, height|
    @speed = speed
    @distance = distance
    @weight = weight
    @width = width
    @length = length
    @height = height

  end
  define_method(:volume)  do
    @length * @height * @width
  end
  define_method(:cost_to_ship)  do
    @weight * @speed * @distance * 1.5
  end
end
