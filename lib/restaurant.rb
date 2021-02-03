class Restaurant
  attr_accessor :name, :opening_time, :dishes, :closing_time
  def initialize(opening_time, name)
    @dishes = []
    @name = name
    @opening_time = opening_time
  end

  def closing_time(hours)
    closing_time = self.opening_time.to_i + hours

    return "#{closing_time}:00"
  end

  def add_dish(dish)
    self.dishes << dish
  end

  def open_for_lunch?
    if self.opening_time.to_i < 12
       true
     else
       false
     end
  end

  def menu_dish_names
    self.dishes.map do |dish|
      dish.upcase
    end
  end

  def announce_closing_time(hours)
    closing_time = self.opening_time.to_i + hours

    if closing_time < 12
      return "#{name} will be closing at #{closing_time}:00AM"
    else
      return "#{name} will be closing at #{closing_time - 12}:00PM"
      # Must be a better way to do this
    end
  end
end
