
class Router

  def initialize(meals_controller)
    @meals_controller = meals_controller
    @running = true
  end

  def run
    while @running
      print_menu
      choice = gets.chomp.to_i
      router_action(choice)
    end
  end

  def print_menu
    puts "---------------------------"
    puts '------------menu-----------'
    puts "---------------------------"
    puts '1 - Add a meal'
    puts '2 - List all meals'
    puts '3 - Add a customer'
    puts '4 - List all customers'
    puts '8 - Exit'
    puts "---------------------------"
  end

  def router_action(choice)
    case choice
    when 1 then @meals_controller.add
    when 2 then @meals_controller.list
    when 8 then stop!
    end
  end

  def stop!
    @running = false
  end
end
