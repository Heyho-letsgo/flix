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

  def update
    # Dans un premier temps, on réactive la donnée concernée
    @movie = Movie.find(params[:id])
    # On déclare une variable qui déclare les rubriques autorisées à passer
    movie_params = params.require(:movie).permit(:title, :rating, :total_gross, :description, :released_on)
    # On met à jour la référence concernée (@movie.update)en mettant à jour les paramètres concernés
    @movie.update(movie_params)
    redirect_to @movie
  end

  def new
    @movie = Movie.new
  end

  def create
    # à la diférence de update, on a pas encore d'id, donc on ne peux pas rappeler laligne par son id
    # On déclare une variable qui déclare les rubriques autorisées à passer
    movie_params = params.require(:movie).permit(:title, :rating, :total_gross, :description, :released_on)
    # On rajoute la référence concernée (@movie.new)en mettant à jour les paramètres concernés
    @movie = Movie.create(movie_params)
    #@movie.save
    redirect_to @movie
  end
end
