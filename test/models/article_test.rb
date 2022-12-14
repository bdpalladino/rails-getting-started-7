# frozen_string_literal: true

require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test 'should not save article without title' do
    article = Article.new
    assert_not article.save, 'Saved the article without a title'
  end
end

# Reference:
# https://guides.rubyonrails.org/testing.html