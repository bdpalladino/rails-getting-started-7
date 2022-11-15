class Comment < ApplicationRecord
  include Visible

  belongs_to :article
end

# Reference:
# https://guides.rubyonrails.org/association_basics.html#the-belongs-to-association