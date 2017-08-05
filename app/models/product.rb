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
  has_many :cart_item

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  # validates_attachment_content_type :image, content_type: /^image\/(jpg|jpeg)$/

  extend FriendlyId
  friendly_id :name, use: :slugged
end
