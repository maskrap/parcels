require('rspec')
require('parcels')

describe('Parcels#volume')  do
  it("analyze input of volume that multiplies length, height, and width") do
    expect(Parcels.new(0, 0, 0, 1, 2, 3).volume).to(eq(6))
  end
  it("analyze the cost to ship calculating the weight, speed, distance, and fixed cost of 1.5") do
    expect(Parcels.new(1, 2, 1, 2, 2, 2).cost_to_ship).to(eq(3))
  end
end
