class ArticlesController < ApplicationController
  def new
  end

  # create action /articles/create
  def create
    puts "-------- "
    puts params
    render plain: params[:article].inspect
    # json => render json: params[:article]

  end
end
