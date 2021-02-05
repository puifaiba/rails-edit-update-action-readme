class ArticlesController < ApplicationController
    before_action :get_article, only: [:show, :edit, :update]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.title = params[:title]
    @article.description = params[:description]
    @article.save
    redirect_to article_path(@article)
  end

  def edit
  end

  def update
    @article.update(title: params[:article][:title], description: params[:article][:description])
    redirect_to article_path(@article)
  end

  private
    def get_article
      @article = Article.find_by(id: params[:id])
    end

end
