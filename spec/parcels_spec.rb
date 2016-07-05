require('rspec')
require('parcels')

describe('Parcels#volume')  do
  it("analyze input of volume that multiplies length, height, and width") do
    expect(Parcels.new(0, 0, 0, 1, 2, 3).volume).to(eq(6))
  end
  it("analyze the cost to ship calculating the weight, speed, distance, and fixed cost of 1.5") do
    expect(Parcels.new(1, 2, 1, 3, 3, 3).cost_to_ship).to(eq(3))
  end
  it("adds wrapping cost, should you want to wrap your package")  do
    expect(Parcels.new(1, 2, 1, 2, 2, 2).cost_to_wrap).to(eq(6))
  end
  it("analyze the cost to ship calculating the weight, speed, distance, and fixed cost of 1.5, unless the volume is less than 10 which will give you a cost of 1") do
    expect(Parcels.new(1, 2, 1, 2, 2, 2).cost_to_ship).to(eq(2))
  end
end
