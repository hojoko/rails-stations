class Admin::MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end  
  
  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      flash[:notice] = "作成しました"
      redirect_to admin_movies_path
    else
      flash[:alert] = "作成できませんでした"
      render :new
    end
  end

  private
    def movie_params
      params.require(:movie).permit(:name, :image_url, :year, :description, :is_showing)
    end
end
