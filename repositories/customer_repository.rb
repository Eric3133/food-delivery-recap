require "csv"
require_relative "../models/customer"
class CustomerRepository
  def initialize(csv_file)
    @csv_file = csv_file
    @customers = []
    load_csv
  end

  def create(customer)
    @customers << customer
  end

  def all
    @customers
  end

  def find(id)
    @customers.find { |customer| customer.id == id}
  end


  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      # p row
      row[:id] = row[:id].to_i
      @customers << Customer.new(row)
    end
  end
end

# repo = CustomerRepository.new("./data/customers.csv")
# # repo.load_csv
# # p repo.all
# p repo.find(1)
