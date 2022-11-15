class Article < ApplicationRecord
  include Visible

  has_many :comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end

# Reference:
# https://guides.rubyonrails.org/active_record_validations.html
# https://guides.rubyonrails.org/association_basics.html#the-has-many-association