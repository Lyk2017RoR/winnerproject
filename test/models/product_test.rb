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

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
