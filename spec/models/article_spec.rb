require 'rails_helper'

RSpec.describe Article, type: :model do
  it 'is valid with all required criteria provided' do
    article = Article.new(title: 'Test Article', body: 'More than 10 characters', status: 'public')
    expect(article).to be_valid
  end

  it 'is not valid without a title' do
    article = Article.new(title: nil, body: 'More than 10 characters', status: 'public')
    expect(article).to_not be_valid
  end

  it 'is not valid without a body' do
    article = Article.new(title: 'Test Article', body: nil, status: 'public')
    expect(article).to_not be_valid
  end

  it 'is not valid if the body has fewer than 10 characters' do
    article = Article.new(title: 'Test Article', body: '<10 char', status: 'public')
    expect(article).to_not be_valid
  end

  it 'is not valid without a status' do
    article = Article.new(title: 'Test Article', body: 'More than 10 characters', status: nil)
    expect(article).to_not be_valid
  end

  it 'returns expected value for article summary' do
    # Arrange: set up your test data, object
    article = Article.new(title: 'Test Article', body: 'More than 10 characters', status: 'public')
    expected_value = 'Test Article: More than ...'
    # Act: run the code you want to test
    actual_value = article.article_summary
    # Assert
    expect(actual_value).to eq expected_value
  end
end

# Reference:
# https://semaphoreci.com/community/tutorials/how-to-test-rails-models-with-rspec
# https://www.tutorialspoint.com/rspec/rspec_basic_syntax.htm
# https://www.tutorialspoint.com/rspec/rspec_matchers.htm