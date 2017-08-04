# == Schema Information
#
# Table name: profiles
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  phone      :string
#  birth_date :date
#  province   :string
#  adress     :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Profile < ApplicationRecord
  belongs_to :user
end
