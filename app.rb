require_relative './controllers/meals_controller.rb'
require_relative './repositories/meal_repository.rb'
require_relative './router.rb'

MEALS_CSV_FILE = File.join(__dir__, 'data/meals.csv')

meal_repository = MealRepository.new(MEALS_CSV_FILE)

p meal_repository.all
meals_controller = MealsController.new(meal_repository)

router = Router.new(meals_controller)
router.run
