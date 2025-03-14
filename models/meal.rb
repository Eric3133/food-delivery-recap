class Meal
  attr_accessor :id, :name, :price
  def initialize(attr = {})
    @id = attr[:id]
    @name = attr[:name]
    @price = attr[:price]
  end
end

# meal1 = Meal.new(id: 1, name: 'Burger', price: 5)
# meal2 = Meal.new(id: 2, name: 'Pizza', price: 8)
# p meal1
# p meal2
