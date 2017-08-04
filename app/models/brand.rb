# == Schema Information
#
# Table name: brands
#
#  id         :integer          not null, primary key
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Brand < ApplicationRecord
    has_many :products, dependent: :destroy

    extend FriendlyId
    friendly_id :name, use: :slugged
end
