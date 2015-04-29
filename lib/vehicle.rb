class Vehicle

  @@cars = []

  define_method(:initialize) do |make, model, year|
    @make = make
    @model = model
    @year = year
  end

  define_method(:make) do
    @make
  end

  define_method(:model) do
    @model
  end

  define_method(:year) do
    @year
  end

  define_method(:save) do
    @@cars.push(self)
  end

  define_singleton_method(:all) do
    @@cars
  end

  define_singleton_method(:clear) do
    @@cars = []
  end

  define_method(:age) do
    current_year = Time.new()
    current_year = current_year.year()
    age = current_year.-(@year)
  end

  

end
