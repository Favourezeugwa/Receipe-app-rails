require 'rails_helper'

RSpec.describe "food index page", type: :feature do
  before :each do
    @food1 = Food.create(
      name: "Apple",
      measurement_unit: "kg",
      price: 0.50
    )

    @food2 = Food.create(
      name: "Banana",
      measurement_unit: "gram",
      price: 45.00
    )
  end

  describe "food index page" do
    it "displays all foods" do
      visit foods_path
      expect(page).to have_content("Apple")
      expect(page).to have_content("Banana")
    end

    it "displays a link to create a new food" do
      visit foods_path
      expect(page).to have_content("Add food")
      expect(page).to have_content('Name')
      expect(page).to have_content('Measurement Unit')
      expect(page).to have_content('Price')
    end

    it "displays a link to create a new food" do
      visit foods_path
      click_link "Add food"
      expect(page).to have_current_path(new_food_path)
    end

    it "displays a link to delete a food" do
      visit foods_path
      expect(page).to have_content("Delete")
    end

    it "displays correct measurement unit for each food" do
      visit foods_path
      expect(page).to have_content("gram")
    end

    it "displays correct price for @food1" do
      visit foods_path
      expect(page).to have_content("0.5")
    end
  end
end
