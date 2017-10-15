# == Schema Information
#
# Table name: supported_points
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  project_id :integer
#  point      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SupportedPoint < ApplicationRecord
  belongs_to :user
  belongs_to :project

  validates :user, :project, :point, presence: true


end
