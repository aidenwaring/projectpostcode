class Post < ApplicationRecord
  belongs_to :account
  has_one_attached :code_image
end