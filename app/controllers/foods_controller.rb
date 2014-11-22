class FoodsController < ApplicationController
  def index
    foods = HTTParty('food_api')
    foods.each do |food|

    Food.create(
      name: food['name'],
      expiration: food['expiration'])
    end
  end
  
  def show
  end
  
  def new
  end

  def update
  end

  def create
  end

end
