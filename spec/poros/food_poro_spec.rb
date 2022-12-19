require 'rails_helper'

RSpec.describe Food do
  it 'creates a food poro based on attributes' do
    attr = {
              "fdcId": 451884,
              "description": "SWEET POTATOES",
              "lowercaseDescription": "sweet potatoes",
              "dataType": "Branded",
              "gtinUpc": "832298010009",
              "publishedDate": "2019-04-01",
              "brandOwner": "NOT A BRANDED ITEM",
              "ingredients": "salt, pepper, oregano",
              "marketCountry": "United States",
              "foodCategory": "Pre-Packaged Fruit & Vegetables",
              "modifiedDate": "2018-02-16",
              "dataSource": "LI",
              "servingSizeUnit": "g",
              "servingSize": 130.0,
              "householdServingFullText": "1 .PETITE POTATO",
              "tradeChannels": [
                  "NO_TRADE_CHANNEL"
              ],
              "allHighlightFields": "",
              "score": 1037.6493
    }

    food = Food.new(attr)

    expect(food).to be_a(Food)
    expect(food.upc).to eq("832298010009")
    expect(food.description).to eq("SWEET POTATOES")
    expect(food.ingredients).to eq("salt, pepper, oregano")
    expect(food.brand).to eq("NOT A BRANDED ITEM")
  end
end