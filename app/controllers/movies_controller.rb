class MoviesController < ApplicationController

  def index
    @movies = []
  end

  def show
    @moviename = request.original_fullpath
    @reviews = Review.all
  end

end
