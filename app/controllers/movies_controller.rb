class MoviesController < ApplicationController

  def index
    @movies = []
  end

  def show
    @moviename = request.original_fullpath
    @reviews = Review.all
  end

  # private
  #
  # def review_params
  #   params.require(:review).permit(:moviename, :email, :rating, :comment)
  # end
end
