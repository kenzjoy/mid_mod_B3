class FoodFacade
  def self.food_search(term)
    data = FoodService.search(term)
    data[:foods].map do |food_attrs|
      Food.new(food_attrs)
    end
  end
end