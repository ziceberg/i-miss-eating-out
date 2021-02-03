require 'minitest/autorun'
require 'minitest/pride'
require './lib/restaurant'

class RestaurantTest < Minitest::Test
  # Iteration 1 Tests:
  def test_it_exists
    restaurant = Restaurant.new('10:00', 'Fuel Cafe')

    assert_instance_of Restaurant, restaurant
  end

  def test_it_has_opening_time
    # skip
    restaurant = Restaurant.new('10:00', 'Fuel Cafe')

    assert_equal '10:00', restaurant.opening_time
  end

  def test_it_has_name
    # skip
    restaurant = Restaurant.new('10:00', 'Fuel Cafe')

    assert_equal 'Fuel Cafe', restaurant.name
  end

  def test_it_has_dishes
    # skip
    restaurant = Restaurant.new('10:00', 'Fuel Cafe')

    assert_equal [], restaurant.dishes
  end

  #Iteration 2 Tests:
  def test_it_has_closing_time
    # skip
    restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
    restaurant2 = Restaurant.new('16:00', 'Il Poggio')

    assert_equal '18:00', restaurant1.closing_time(8)
    assert_equal '23:00', restaurant2.closing_time(7)
  end

  def test_it_can_add_dishes
    # skip
    restaurant = Restaurant.new('16:00', 'Il Poggio')

    restaurant.add_dish('Burrata')
    restaurant.add_dish('Pizzetta')
    restaurant.add_dish('Ravioli')

    assert_equal ['Burrata', 'Pizzetta', 'Ravioli'], restaurant.dishes
  end
end

#Iteration 3 Tests:
def test_open_for_lunch?
  restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
  restaurant2 = Restaurant.new('16:00', 'Il Posto')

  assert_equal true, restaurant1.open_for_lunch?
  assert_equal false, restaurant2.open_for_lunch?
end

def test_menu_dish_names
  restaurant2 = Restaurant.new('16:00', 'Il Posto')
  restaurant2.add_dish('Burrata')
  restaurant2.add_dish('Pizzetta')
  restaurant2.add_dish('Ravioli')

  assert_equal ["BURRATA", "PIZZETTA", "RAVIOLI"], restaurant2.dishes
end

#Iteration 4 Tests:
def test_announce_closing_time
  restaurant1 = Restaurant.new('6:00', 'Fuel Cafe')
  restaurant2 = Restaurant.new('16:00', 'Il Posto')

  assert_equal "Fuel Cafe will be closing at 11:00AM", restaurant1.announce_closing_time(5)
  assert_equal "Il Posto will be closing at 11:00PM", restaurant2.announce_closing_time(7)
end
