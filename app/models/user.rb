# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  password   :string(255)
#  gender     :integer
#  points     :integer
#  image      :binary(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
end
