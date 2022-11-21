class Article < ApplicationRecord
  include Visible

  has_many :comments, dependent: :delete_all

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  validates :status, presence: true
end

# Reference:
# https://guides.rubyonrails.org/active_record_validations.html
# https://guides.rubyonrails.org/association_basics.html#the-has-many-association
# https://guides.rubyonrails.org/association_basics.html#options-for-belongs-to-dependent