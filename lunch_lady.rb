# Basic Objectives:

# the user chooses from a list of main dishes
# the user chooses 2 side dish items
# computer repeats users order
# computer totals lunch items and displays total

 

# Bonus Objectives:

# the user can choose as many "add-on" items as they want before getting total
# the user can clear their choices and start over
# the user has a wallet total they start with and their choices cannot exceed what they can pay for
# the program is in a loop to keep asking the user to make new orders until they type 'quit' at any time
# main dishes and side items have descriptions with them and the user has an option to view the description /nutritional facts before they order (hint: think hashes)
# descriptions of food can have multiple options like nutritional facts, calories, fat content ect...(hint: think nested hashes)
# display to the user not only their total but the total fat content/calories / carbs / etc...

# @main_dish = [
#   { :name, "Pizza", price: 5 }
#   { :name, "Steak", price: 15 }
#   { :name, "Lasagna", price: 7 }
#   { :name, "Lamb", price: 25 }
#   { :name, "Salmon", price: 25 }
# ] 

# @side_dish [
# { :side_name, "Salad", price: 3 }
# { :side_name, "Rice", price: 2 }
# { :side_name, "Beans", price: 3 }
# { :side_name, "Fries", price: 3 }
# { :side_name, "Jello", price: 2 }
# ]


class Dish
  attr_accessor :name, :price
  
  def initialize(name, price)
    @name = name
    @price = price
  end
end


class Restaurant

  def initialize
    @main_dishes = [ Dish.new('Spaghetti', 12), Dish.new('Chicken', 20) ]
    @side_dishes= [ Dish.new('Fries', 4), Dish.new('Rice', 3) ]
    @checkout_cost = []
    @ordered_items = []
    main_dish_menu
  end

  def main_dish_list
    @main_dishes.each_with_index do |dish, index|
      puts "#{index + 1} #{dish.name} >> Price: #{dish.price}"
    end
  end

  def main_dish_menu
    puts "Select a main dish"
    main_dish_list
    choice = gets.to_i
    case choice
      when "1"
        puts "Your main dish is #{@main_dishes[choice - 1].name}"
        @checkout_cost << @main_dishes[choice - 1].price
        @ordered_items << @main_dishes[choice - 1].name
        puts
      when "2"
        puts "Your main dish is #{@main_dishes[choice - 1].name}"
        @checkout_cost << @main_dishes[choice - 1].price
        @ordered_items << @main_dishes[choice - 1].name
        puts
      else
      "Enter a valid option"
      puts
    end
    side_dish_menu
  end
  
  def side_dish_menu
    puts "Select first side"
    @side_dishes.each_with_index do |dish, index|
      puts "#{index + 1} #{dish.name} >> Price: #{dish.price}"
    end
    case choice
      when "1"
        puts "Your side dish is #{@side_dishes[choice - 1].name}"
        @checkout_cost << @side_dishes[choice - 1].price
        @ordered_items << @side_dishes[choice - 1].name
      when "2"
        puts "Your side dish is #{@side_dishes[choice - 1].name}"
        @checkout_cost << @side_dishes[choice - 1].price
        @ordered_items << @side_dishes[choice - 1].name
    end
    side_dish_menu_two
  end
  def side_dish_menu_two
    puts "Select second side"
    @side_dishes.each_with_index do |dish, index|
      puts "#{index + 1} #{dish.name} >> Price: #{dish.price}"
    end
    case gets.chomp
      when "1"
        puts "Your second side dish is #{@side_dishes[choice - 1].name}"
        @checkout_cost << @side_dishes[choice - 1].price
        @ordered_items << @side_dishes[choice - 1].name
      when "2"
        puts "Your second side dish is #{@side_dishes[choice - 1].name}"
        @checkout_cost << @side_dishes[choice - 1].price
        @ordered_items << @side_dishes[choice - 1].name
    end
    puts "Your main dish is #{@main_dishes[choice - 1].price}"
    end
  # def print_order
  #   puts "Your selected items"
  #   main_dish_selected = @main_dishes[get.to_i - 1]
  #     puts "#{main_dish_selected[:dish.name]}
  #     end
  end
  



Restaurant.new

# def dish_menu
#   puts "1) Select a main dish"
#   puts "2) Select first side dish"
#   puts "3) Select second side dish"
#   case gets.strip
#     when "1"
#     list_main
#     dish_menu
#     when "2"
#     list_side
#     dish_menu
#     when "3"
#     select_side_2
#     dish_menu
#     else 
#     puts "Select a valid option"
#     dish_menu
#     end
  
# end


# puts dish_menu
