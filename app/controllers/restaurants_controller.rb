class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
  end

  def update
    @restaurants = Restaurant.find(params[:id])
    @restaurants.update(restaurant_params)

  end

  def edit
    @restaurants = Restaurant.find(params[:id])
  end


  def destroy
    @restaurants = Restaurant.find(params[:id])
    @restaurants.destroy
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :review)
  end


end
