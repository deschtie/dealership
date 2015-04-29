require('rspec')
require('vehicle')

describe('Vehicle') do
  describe('#make') do
    it('returns the make of the car') do
      test_vehicle = Vehicle.new('Ford', 'Taurus', 2000)
      expect(test_vehicle.make()).to(eq('Ford'))
    end
  end

  describe('#model') do
    it('it returns the model of the car') do
      test_vehicle = Vehicle.new('Ford', 'Taurus', 2000)
      expect(test_vehicle.model()).to(eq('Taurus'))
    end
  end
  describe('#year') do
    it('return the year of the car') do
      test_vehicle = Vehicle.new('Ford','Taurus',2000)
      expect(test_vehicle.year()).to(eq(2000))
    end

  end

end
