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

  class << self
    def factory(user, project, points)
      supported_point = SupportedPoint.new do |p|
        p.user = user
        p.project = project
        p.point = points
      end

      supported_point
    end

    def factory!(*args)
      supported_point = factory(*args)
      supported_point.save!
      supported_point
    end
  end
end
