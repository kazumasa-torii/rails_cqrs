# frozen_string_literal: true

class ArticlesQuery
  def initialize(scope = Article.all)
    @scope = scope
  end

  def call(params)
    @scope.where(params)
  end

  def first(params)
    @scope.where(params).first
  end
end
