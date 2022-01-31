class Admin::MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
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

  def edit
    @movie = Movie.find(params[:id])  
  end

  def update    
    @movie = Movie.find(params[:id])
    puts "---------------------"
    puts movie_params
    puts "---------------------"
    if @movie.update(movie_params)
      flash[:notice] = "更新しました"
      binding.pry
      redirect_to admin_movies_path
    else
      flash[:alert] = "#{@movie.errors.full_messages.join('\n')}"
      render :edit
    end
  end

  private
    def movie_params
      params.require(:movie).permit(:name, :image_url, :year, :description, :is_showing)
    end
end
