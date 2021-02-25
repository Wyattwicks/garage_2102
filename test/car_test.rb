require 'minitest/autorun'
require 'minitest/pride'
require './lib/car'
class CarTest < Minitest::Test
  def test_car_exists_and_has_attributes
    car_1 = Car.new({description: 'Green Ford Mustang', year: '1967'})
     # require "pry";binding.pry

    assert_instance_of Car, car_1
    assert_equal "Ford", car_1.make
    assert_equal "Mustang", car_1.model
    assert_equal "Green", car_1.color
    assert_equal "1967", car_1.year
    assert_equal 54, car_1.age
  end

end
