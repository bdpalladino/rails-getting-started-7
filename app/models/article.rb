class Article < ApplicationRecord
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  VALID_STATUSES = ['public', 'private', 'archived']

  validates :status, inclusion: { in: VALID_STATUSES }

  def archived?
    status == 'archived'
  end
end

# Reference:
# https://guides.rubyonrails.org/active_record_validations.html
# https://guides.rubyonrails.org/association_basics.html#the-has-many-association