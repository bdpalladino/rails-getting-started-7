class Article < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end

# Reference:
# https://guides.rubyonrails.org/active_record_validations.html