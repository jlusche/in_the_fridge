class FoodsController < ApplicationController
  
  def new
      @food = Food.new
  end

  def index
      @foods = Food.all
    #foods = HTTParty('food_api')
    #foods.each do |food|

    #Food.create(
     # name: food['name'],
      #expiration: food['expiration'])
  end
 
  def create
    @food = Food.create(food_params)

    if @food.save #do something
      redirect_to '/'  #can also say root_path or foods_path or index
    else 
      render 'new'
    end
  end
  
  def show
    #only want 1 instance
    #get the instance from the database with ID
    @displayed_food = Food.find_by_id("6")
    
  end

  def update
  end

  private #can only call food_params within this controller. 
  def food_params
    params.require(:food).permit(:name, :expiration, :food_type)
  end

end
