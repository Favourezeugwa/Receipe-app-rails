require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  describe 'Tests for RecipeFood model validation ' do
    @user = User.new(name: 'Rito', email: 'abcd@gmail.com', password: '123456')
    @food = Food.new(user: @user, name: 'Kabab', measurement_unit: 'kg', price: 100, quantity: 4)
    @recipe = Recipe.new(user: @user, name: 'Hello', description: 'This is my first recipe description')
    subject { RecipeFood.new(recipe: @recipe, food: @food, quantity: 5) }
    before { subject.save }

    it 'quantity should not be nil' do
      subject.quantity = nil
      expect(subject).to_not be_valid
    end
    it 'quantity should not be less than 0' do
      subject.quantity = -5
      expect(subject).to_not be_valid
    end
    it 'quantity should be 4' do
      subject.quantity = 4
      expect(subject.quantity).to eq 4
    end
  end
end
