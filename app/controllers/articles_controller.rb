# frozen_string_literal: true

class ArticlesController < ApplicationController
  before_action :get_query

  layout false
  def index
    @count = Article.find(1)
  end

  def new
    @article = Article.new
  end

  def create
    article = Article.new
    command = get_command(article)
    command.create
  end

  def show
    @article = @query.first(id: params[:id])
  end

  def edit
    @article = @query.first(id: params[:id])
  end

  def update
    article = @query.first(id: params[:id])
    @command = get_command(article)
    @command.update
  end

  private
  def article_params
    params.require(:article).permit(:title, :body)
  end

  def get_command(article)
    @command = ArticlesCommand.new(article, article_params)
  end

  def get_query
    @query = ArticlesQuery.new
  end
end
