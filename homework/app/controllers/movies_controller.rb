class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find_by_id(params[:id])
  end

  def new

  end

  def create
    m = Movie.new
    m.title = params[:title]
    m.year = params[:year]
    m.save

    redirect_to movies_url
  end

  def edit
    @movie = Movie.find_by_id(params[:id])
  end

  def update
    @movie = Movie.find_by_id(params[:id])
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.save
    redirect_to movies_url
  end

  def destroy
    m = Movie.find_by_id(params[:id])
    m.destroy
    redirect_to movies_url
  end





end
