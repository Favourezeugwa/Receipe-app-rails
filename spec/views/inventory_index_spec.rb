require 'rails_helper'

RSpec.describe "Inventory index page", type: :feature do
  before :each do
    @user1 = User.create(
      name: "Favour",
      email: 'favour@gmail.com',
      password: '1234567'
    )

    Inventory.create(name: "Inventory 1", user_id: @user1.id)
    Inventory.create(name: "Inventory 2", user_id: @user1.id)
  end

  describe "Inventory index page" do
    it "displays all inventories" do
      visit inventories_path
      expect(page).to have_content("I am the Inventories index")
    end

    it "displays a show link" do
      visit inventories_path
      expect(page).to have_content("Inventory show")
    end

    it "displays a link to the show path" do
      visit inventories_path
      click_link "Inventory show"
      expect(page).to have_current_path(inventory_path(:id))
    end
  end
end