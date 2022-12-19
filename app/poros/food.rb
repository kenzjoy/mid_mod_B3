class Food
  attr_reader :upc,
              :description,
              :ingredients,
              :brand

  def initialize(attr)
   @upc = attr[:gtinUpc]
   @description = attr[:description]
   @ingredients = attr[:ingredients]
   @brand = attr[:brandOwner]
  end
end