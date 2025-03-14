require 'csv'
require_relative '../models/meal'
class MealRepository
  def initialize(csv_file)
    @csv_file = csv_file
    @meals = []
    load_csv
  end

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      # p row
      row[:id] = row[:id].to_i
      row[:price] = row[:price].to_i
      @meals << Meal.new(row)
    end
  end

  def create(meal)
    @meals << meal
  end

  def all
    @meals
  end

  def find(id)
    @meals.find{ |meal| meal.id == id }
  end
  # p find(1)
end

# repo = MealRepository.new('./data/meals.csv')
# p repo.find(1)
# p repo.all
