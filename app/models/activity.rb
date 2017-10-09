# == Schema Information
#
# Table name: activities
#
#  id                 :integer          not null, primary key
#  user_id            :integer          not null
#  project_id         :integer          not null
#  supported_point_id :integer
#  comment_id         :integer
#  type               :integer          default(1), not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Activity < ApplicationRecord
  enum event: {support:1, watch:2, comment:3}

  belongs_to :user
  belongs_to :project
  belongs_to :supported_point
  # belongs_to :comment

  validates :user, :project, presence: true


end
