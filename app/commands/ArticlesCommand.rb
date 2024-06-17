class ArticlesCommand
  def initialize(article, article_params)
    @article = article
    @article_params = article_params
  end
  def create
    if @article.valid?(@article_params)
      @article.save(@article_params)
    end
  end

  def update
    if @article.valid?(@article_params)
      @article.update(@article_params)
    end
  end
end