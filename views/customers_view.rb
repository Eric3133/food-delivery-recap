class CustomersView
  def initialize
  end

  def ask_user_for(attribute)
    puts "What's the customer's #{attribute}?"
    gets.chomp
  end

  def display(customers)
    customers.each_with_index do |customer, index|
      puts "#{index + 1} - #{customer.name} - #{customer.address}"
    end
  end
end
