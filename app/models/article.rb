# Article model class definition
class Article < ApplicationRecord
  include Visible

  has_many :comments, dependent: :delete_all

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  validates :status, presence: true

  # Returns a summary (title + 1st 10 characters of body)
  def article_summary
    "#{title}: #{body[0,10]}..."
  end
end

# Reference:
# https://guides.rubyonrails.org/active_record_validations.html
# https://guides.rubyonrails.org/association_basics.html#the-has-many-association
# https://guides.rubyonrails.org/association_basics.html#options-for-belongs-to-dependent