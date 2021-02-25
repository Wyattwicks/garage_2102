require 'minitest/autorun'
require 'minitest/pride'
require './lib/car'
require './lib/owner'

class OwnerTest < Minitest::Test
  def setup
    @owner_1 = Owner.new('Regina George', 'Heiress')
    @car_1 = Car.new({description: 'Green Ford Mustang', year: '1967'})
    @car_2 = Car.new({description: 'Silver BMW 3-Series', year: '2001'})
    @car_3 = Car.new({description: 'Red Chevrolet Corvette', year: '1963'})
  end

  def test_instance_and_attributes
    assert_instance_of Owner, @owner_1
    assert_equal "Regina George", @owner_1.name
    assert_equal "Heiress", @owner_1.occupation
  end

  def test_cars
    assert_equal [], @owner_1.cars
  end

  def test_buy

    @owner_1.buy('1967 Green Ford Mustang')
    assert_equal @car_1, @owner_1.cars
  end


end
