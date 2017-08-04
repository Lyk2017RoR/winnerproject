class Brand < ApplicationRecord
    has_many :products, dependent: :destroy

    extend FriendlyId
    friendly_id :name, use: :slugged
end
