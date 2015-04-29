class Vehicle

  define_method(:initialize) do |make, model, year|
    @make = make
    @model = model
    @year = year
  end

  define_method(:make) do
    @make
  end
  
end
