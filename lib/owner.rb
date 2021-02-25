

class Owner

  attr_reader :name, :occupation, :cars



  def initialize(name, occupation)
    @name = name
    @occupation = occupation
    @cars = []

  end

  def buy(wrong_format_car)
    car_array = wrong_format_car.split(' ',2)
     year = car_array[0].to_s
     info = car_array[1].to_s
     new_car_info = {}
     new_car_info[:description] = info
     new_car_info[:year] = year
      car_1 = Car.new(new_car_info)


     @cars << car_1
     @cars.flatten

  end


end
