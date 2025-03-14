class Customer
  attr_accessor :id, :name, :address
  def initialize(attr = {})
    @id = attr[:id]
    @name = attr[:name]
    @address = attr[:address]
  end
end

# customer1 = Customer.new(id: 1, name: 'John', address: 'London')
# customer2 = Customer.new(id: 2, name: 'Jane', address: 'Paris')
# p customer1
# p customer2
