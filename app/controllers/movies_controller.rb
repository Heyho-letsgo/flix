class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end


  def new
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
#en cours de dev...
    redirect_to @movie
  end
end
