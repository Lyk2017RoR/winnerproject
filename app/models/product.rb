class Product < ApplicationRecord
  belongs_to :brand
  belongs_to :category

  extend FriendlyId
  friendly_id :name, use: :slugged
end
