class ArticlesController < ApplicationController
  def index
    @articles = Article.includes :authors, :journal
  end

  def show
    @article = Article.find params[:id]
  end
end
