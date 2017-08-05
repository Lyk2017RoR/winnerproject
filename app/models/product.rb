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

  Paperclip.interpolates :category_id do |attachment, style|
    attachment.instance.category.id
  end
  
  has_attached_file :image, :processors => [:watermark],
  :styles => { :original => { :geometry => '600x515#', :watermark_path => "#{Rails.root}/public/images/original/watermark.png" } },
  :url    => '/assets/attachment/:id/:style/:basename.:extension',
  :path   => '/products/:id/:id_large.jpg',
  :default_url => "/images/:style/:category_id.png"
  validates_attachment_content_type :image, :content_type => /^image\/(jpg|jpeg)$/

  extend FriendlyId
  friendly_id :name, use: :slugged
end
