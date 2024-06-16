# frozen_string_literal: true

class ArticlesController < ApplicationController
  layout false
  def index
    Article.all
  end
end
