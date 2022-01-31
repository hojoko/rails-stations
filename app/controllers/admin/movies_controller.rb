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
    if @movie.update(movie_params)
      flash[:notice] = "更新しました"
      redirect_to admin_movies_path
    else
      flash[:alert] = "更新できませんでした"
      render :edit
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    if @movie.destroy
      redirect_to admin_movies_path, alert: "削除しました"
    else
      flash.now[:alert] = "削除できませんでした"
      redirect_to admin_movies_path
    end
  end

  private
    def movie_params
      params.require(:movie).permit(:name, :image_url, :year, :description, :is_showing)
    end
end
