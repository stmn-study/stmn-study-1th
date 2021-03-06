# == Schema Information
#
# Table name: projects
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  target_point :integer
#  message      :text(65535)
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Project < ApplicationRecord
  has_many   :supported_points
  belongs_to :user

  validates :name, :target_point, :message, :user, presence: true

  def supported_point
    supported_points.sum(:point)
  end
end
