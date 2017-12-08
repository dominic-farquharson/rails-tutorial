class ArticlesController < ApplicationController
  
 
  # A frequent practice is to place the standard CRUD actions 
  # in each controller in the following order: index, show, 
  # new, edit, create, update and destroy. 
  def index
    @articles = Article.all
  end

  def show
    # finding article via path param
    @article = Article.find(params[:id])
  end

  def new
  end

  def edit
    @article = Article.find(params[:id])
  end

  # create action /articles/create
  def create
    # creates model, only allowing title and text
    @article = Article.new(article_params)

    # saves to database
    if @article.save
      # rediects to the show action
      redirect_to @article
    else 
      # renders form
      render 'new' 
    end
  end

  def update
    # retrieving
    @article = Article.find(params[:id])

    if(@article.update(article_params))
      redirect_to @article
    else 
      render 'edit'
    end
  end


  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end
