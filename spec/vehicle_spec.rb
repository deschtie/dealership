require('rspec')
require('vehicle')
require('dealership')

describe('Vehicle') do
  before() do
    Vehicle.clear()
  end

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
    it('returns the year of the car') do
      test_vehicle = Vehicle.new('Ford','Taurus',2000)
      expect(test_vehicle.year()).to(eq(2000))
    end
  end

  describe('#save') do
    it('it adds a vehicle to the array of saved vehicles') do
      test_vehicle = Vehicle.new('Ford', 'Taurus', 2000)
      test_vehicle.save()
      expect(Vehicle.all()).to(eq([test_vehicle]))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Vehicle.all()).to(eq([]))
    end
  end

  describe('.clear') do
    it('clears all the saved vehicles from the class array') do
      test_vehicle = Vehicle.new('Ford', 'Taurus', 2000)
      test_vehicle.save()
      Vehicle.clear()
      expect(Vehicle.all()).to(eq([]))
    end
  end

  describe('#age') do
    it('returns the vehicles age') do
      test_vehicle = Vehicle.new('Ford', 'Taurus', 2000)
      expect(test_vehicle.age()).to(eq(15))
    end
  end

  describe('#worth_buying') do
    it('returns false if the car is not American and less than 15 years old') do
      test_vehicle = Vehicle.new('Ford', 'Taurus', 2000)
      expect(test_vehicle.worth_buying?()).to(eq(true))
    end
  end

  describe('#id') do
    it('returns the id of the vehicle') do
    test_vehicle = Vehicle.new('Ford', 'Taurus', 2000)
    test_vehicle.save()
    expect(test_vehicle.id()).to(eq(1))
    end
  end

  describe('.find') do
    it('searches for a vehicle by its id number and returns the vehicle object') do
      test_vehicle = Vehicle.new('Ford', 'Taurus', 2000)
      test_vehicle.save()
      test_vehicle2 = Vehicle.new('Geo', 'Prism', 1995)
      test_vehicle2.save()
      expect(Vehicle.find(test_vehicle.id())).to(eq(test_vehicle))
    end
  end

end
