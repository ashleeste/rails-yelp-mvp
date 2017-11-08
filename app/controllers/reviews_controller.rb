class ReviewsController < ApplicationController
   def index
    @reviews = Reviews.all
  end

  def show
    @reviews = Reviews.find(params[:id])
  end

  def new
    @reviews = Reviews.new
  end

  def create
  end

  def update
    @reviews = Reviews.find(params[:id])
  end

  def edit
    @reviews = Reviews.find(params[:id])
  end


  def destroy
    @reviews = Reviews.find(params[:id])
    @reviews.destroy
  end
end
