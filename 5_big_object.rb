# Goal: Starting with shopping_centre, get back the string '29%'

require 'pry'
# To use pry:
# 1. > gem install pry
# 2. Uncomment line 3 (require 'pry')
# 3. Uncomment line 58 (binding.pry)

squash = {
    name: 'squash',
    length: 15,
    nutrients: [
        {
            vitamin: 'A',
            daily_percentage: '4%',
        },
        {
            vitamin: 'C',
            daily_percentage: '29%'
        }
    ]
}

beef = {}
noodles = {}

class Restaurant
    attr_accessor :name, :menu
    def initialize(name)
        @name = name
        @menu = []
    end
    def add_dish_to_menu(dish)
        @menu << dish
    end
end

stir_fry = {
    price: 13.50,
    ingredients: [
        beef,
        noodles,   
        squash
    ]
}    

mr_wok = Restaurant.new('Mr Wok')
mr_wok.add_dish_to_menu(stir_fry)

shopping_centre = {
    address: '5 Somewhere Ln, Blahville',
    chinese_restaurant: {
        address: 'Lot 4',
        details: mr_wok
    }
}

binding.pry

puts 'Your code will stop here. Now type the variable shopping_centre. You can then access values in the shopping_centre hash. Carefully read the code related to the class and instance variables.'