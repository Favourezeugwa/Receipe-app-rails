require 'rails_helper'

RSpec.describe 'Recipe Show page', type: :feature do
  before :each do
    @user1 = User.create(
      name: 'Favour',
      email: 'favour@gmail.com',
      password: '1234567'
    )

    @recipe1 = Recipe.create(
      name: 'JollofRice',
      preparation_time: 5,
      cooking_time: 30,
      description: 'This is a very delicious jollof rice',
      public: true,
      user_id: @user1.id
    )

    @recipe2 = Recipe.create(
      name: 'FriedRice',
      preparation_time: 5,
      cooking_time: 30,
      description: 'This is a very delicious fried rice',
      public: true,
      user_id: @user1.id
    )
  end

  describe 'Recipe Show page' do
    it 'should have content of the recipe' do
      visit recipe_path(@recipe1)
      expect(page).to have_content('Welcome to Receipes show page!')
    end
  end
end
