require_relative '../views/customers_view'
require_relative '../models/customer'
require_relative '../repositories/customer_repository'
class CustomersController
  def initialize(customer_repository)
    @customer_repository = customer_repository
    @customers_view = CustomersView.new
  end

  def add
    name = @customers_view.ask_user_for('name')
    address = @customers_view.ask_user_for('address')
    customer = Customer.new(name: name, address: address)
    @customer_repository.create(customer)
  end

  def list
    customers = @customer_repository.all
    @customers_view.display(customers)
  end
end

customer_repository = CustomerRepository.new('./data/customers.csv')
customers_controller = CustomersController.new(customer_repository)
customers_controller.add
p customer_repository.all
customers_controller.list
