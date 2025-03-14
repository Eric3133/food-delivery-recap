class MealsView

  def ask_user_for(stuff)
    puts "whats the #{stuff}?"
    puts '>'
    gets.chomp
  end

  def display(meals)
    puts 'Here are all the meals:'
    meals.each_with_index do |meal, index|
      puts "#{index + 1} - #{meal.name}(#{meal.price}$)"
    end

  end
end

# view = MealsView.new
# view.ask_user_for('name')
# view.ask_user_for('price')
