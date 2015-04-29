require('rspec')
require('vehicle')

describe('Vehicle') do
  describe('#make') do
    it('returns the make of the car') do
      test_vehicle = Vehicle.new('Ford', 'Taurus', 2000)
      expect(test_vehicle.make()).to(eq('Ford'))
    end
  end
end
