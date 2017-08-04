# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  brand_id    :integer
#  category_id :integer
#  image       :string
#  price       :integer
#  slug        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :string
#

class Product < ApplicationRecord
  belongs_to :brand
  belongs_to :category
  
  has_attached_file :image

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  extend FriendlyId
  friendly_id :name, use: :slugged
end
