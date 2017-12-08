class ArticlesController < ApplicationController
  def new
  end

  # create action /articles/create
  def create
    # creates model, only allowing title and text
    @article = Article.new(article_params)

    # saves to database
    @article.save

    # rediects to the show action
    redirect_to @article
  end


  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end
