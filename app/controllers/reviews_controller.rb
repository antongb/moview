class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def create
    @review = Review.new(review_params)
    if is_valid?(@review.email) && @review.save
      flash[:notice] = 'Your moview review has been saved!'
      redirect_to root_url
    else
      flash[:notice] = "Something went wrong. Please try again."
      redirect_to root_url
    end
  end

  def show
    @review = Review.find(params[:id])
  end


  private

  def review_params
    params.require(:review).permit(:moviename, :email, :rating, :comment)
  end

  def is_valid?(email)
    valid_email_regex = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    match = (email =~ valid_email_regex)
    match == nil ? false : true
  end
end
