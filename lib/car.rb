class Car



  def initialize(car_facts)
    @car_facts = {:description => 'info', :year => 'year'}
    @car_info = car_facts[:description].split(/\s+/,3)
    @car_year = car_facts[:year]

  end

  def make
    @car_info[1]
  end

  def model
    @car_info[2]
  end

  def color
    @car_info[0]
  end

  def year
    @car_year
  end

  def age
    2021 - @car_year.to_i
  end




end
