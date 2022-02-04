class MoviesController < ApplicationController
  def index  
    @movies = Movie.search(search_params[:word], search_params[:is_showing])
  end

  private
    def search_params
      params.permit(:word, :is_showing)
    end
end
