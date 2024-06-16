# frozen_string_literal: true

class ArticlesController < ApplicationController
  layout false
  def index
    @count = Article.find(1)
  end

  def new
    @article = Article.new
  end

  def create
    article = Article.new
    article.title = "test_title_new"
    article.body = "test_body_new"
    article.save
  end
end
