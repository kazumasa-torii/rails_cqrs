# frozen_string_literal: true

class ArticlesQuery
  def initialize(article_params)
    @article_params = article_params
  end

  def search
    Article.where(@article_params)
  end
end
