# frozen_string_literal: true
class Article < ApplicationRecord
  self.abstract_class = true

  connects_to database: { writing: :write, reading: :read }
end
