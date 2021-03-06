class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
     @articles = Article.find(params[:id])
  end

  def new
    @articles = Article.new
  end

  def create
    @articles = Article.new(article_params)
    @articles.save

    redirect_to article_path(@articles)
  end

  def edit
    @articles = Article.find(params[:id])
  end

  def update
    @articles = Article.find(params[:id])
    @articles.update(user_params)

    redirect_to article_path(@articles)
  end

  def destroy
    @articles = Article.find(params[:id])
      @articles.destroy()
    redirect_to article_path(@articles)
  end


private

def article_params
  params.require(:article).permit(:title,:content)
end

def user_params
  params.require(:article).permit(:title,:content)
end

end
